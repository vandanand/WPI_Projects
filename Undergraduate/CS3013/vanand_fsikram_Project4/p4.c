#include <stdlib.h>
#include <stdio.h>
#include <string.h>

//The memory size is 64 bytes
#define SIZE 64
//There are 4 pages 
#define PAGE 4
//OFFSET mask
#define offset 15 //001111
//VPN mask
#define VPN 48 //110000
//Protection bit mask
#define ProBit 64 //0100
//Valid bit mask
#define ValidBit 128 //1000
//Present bit mask
#define preBit 16 //00001000
//PFN mask
#define thePFN 48 //00110000

/* clear the page */
//0x00000000 (and it with this)

int evict(int, int);
int isinPTBR(int);

//global variables
int PID; //in the range [0,3]
char* command_type; //map, store, or load
int virtual_add; //in the range [0,63]
int value; //in the range [0,255]
int RR=0; //use this to increment to see which page is free
int theOFFSET = 0; //keep track in disk 
FILE *disk;

unsigned char memory[SIZE];
int freelist[PAGE] = {0,0,0,0};
//RULE: -1 means that the page is in use, 0-3 means shows which PFN for corresponiding process, any other numbers should point to where it is in disk
int PTBR[PAGE] = {-1,-1,-1,-1};
int PDBR[4][4];
//Address Translation functions
unsigned int getPFN(int VA){ //VA means virtual address
	return (VA & thePFN) >> 4;
}

unsigned int VPNtranslation(int VA){ 
	return (VA & VPN) >> 4;	
}

unsigned int offsetTrans(int VA){
	return (VA & offset);
}

unsigned int probitTrans(int VA){
	return (VA & ProBit) >> 6;
}

unsigned int validbitTrans(int VA){
	return (VA & ValidBit) >> 7;
}

unsigned int presentTrans(int VA){
	return (VA & preBit) >> 3;
}

//Check for free pages
int getFree(){
	for(int i=0; i<PAGE; i++){
		if(!freelist[i]){ //0 means not taken and 1 means taken
			//printf("This %d page is free!\n", i);
			freelist[i]=1;
			RR++;
			return i;
		}
	}
	printf("There are NO free pages\n");
	return -1;
}

//function for swap
int choosePageEvict (int process){
	int evpage= RR%4;
	if (PTBR[process]==evpage){ //not evicting our own page!
		evpage= (evpage+1)%4;
	}
	return evpage;
}
int evict(int PFN, int PID){
	int sVPN=5;
	if(isinPTBR(PFN)){// I AM A PAGE TABLE AND I AM IN MEMORY
		for(int i=0; i< PAGE; i++){
			unsigned int entry= 16*PFN+i;
			if (validbitTrans(entry)&&presentTrans(entry)){
				entry= entry&0xF7;//Marked it as not present
				int mypfn=getPFN(entry);				
				evict(mypfn,PID);
			}
		}
	} 

	
	if(isinPTBR(PFN)){
		for(int l=0;l<PAGE; l++){
			if(PFN==PTBR[l]){
				PTBR[l]= 4;

			}
		}
	}else{
		for(int i=0;i<PAGE;i++){
			if(PDBR[i][PFN]==1){
				int mypfn=PTBR[i];
				int entry=16*mypfn+PFN;
				sVPN=VPNtranslation(entry);
				entry=entry&0xF7;//mark the pages as no longer present
				//entry= entry|theOFFSET;//store the offset in the last 3 bits
				memory[16*mypfn+PFN]=entry;//update the page table
				PDBR[i][PFN]=-1;
			}
		}
	}

	fseek(disk,(PID*5+sVPN)*16, SEEK_SET);
	char word[16];
	memcpy(word,memory+PFN*16,16);
	fwrite(word, 16, 1, disk);
	return 1;
	
}

int isinPTBR(int PID){
	int isevpage = choosePageEvict(PID);
	for(int i=0; i<PAGE; i++){
		if(isevpage == PTBR[i]){
			printf("DON'T EVICT THIS IS A PAGE TABLE, EVICT ITS PAGES FIRST\n");
			return 1; //return 1 if is a page table
		}
	}
	return 0;
}
//puts the desired page from disk to physical memory
//the first argument in the frame in which we freed out
//the second argument is the VPN (0,1,2,3) and then 5 for PTE
//the third argument is the PID 
void swapPageIn(int PFN,int sVPN, int PID){ 
	//PID CAN ONLY BE 0,1,2,3 in this case
	if(VPN==4){	
		fseek(disk,(PID*5+sVPN)*16, SEEK_SET);
		char word[16];
		fread(word, 16, 1, disk);	
		memcpy(memory+PFN*16,word,16);
		PTBR[PID]=PFN;

	}else{
		if(!(isinPTBR(PID))){//is my PTE in memory?
			int ePFN=getFree();
			if(ePFN==-1){
				ePFN=choosePageEvict(PID);
				evict(ePFN,PID); 
			}
			swapPageIn(ePFN,4,PID);
		}else{
			fseek(disk,PID*5+sVPN, SEEK_SET);
			unsigned char word[16];
			fread(word, 16, 1, disk);	
			memcpy(memory+PFN*16,word,16);
			int PTPFN= PTBR[PID];
			unsigned int PTI = (16*PTPFN)+sVPN; //find page table index
			unsigned char pageframe;
			pageframe= memory[PTI];
			pageframe=pageframe|preBit;//marking it as present
			memory[PTI]= pageframe;
			PDBR[PID][PFN]=1;
		}
	}
	
}

//function for map
void map(int PID, int virtual_add, int value){
	if(value < 0 || value > 1){
		printf("ERROR! The value has to be either 0 or 1.\n"); 
	}//in map arguments, value is 0 for read and 1 for read and write

	int PTF; //page table frame
	if (isinPTBR(PID)){
		if (PTBR[PID]>3){
			int ePFN=getFree();
			if(ePFN==-1){
				ePFN=choosePageEvict(PID);
				evict(ePFN,PID); 
			}
			swapPageIn(ePFN,PID,4);
			printf("THE PAGE HAS BEEN SWAPPED WITH PID %i\n", PID);
		}else{
			PTF= PTBR[PID];
		}
	}else{
		PTF = getFree();
	}
	int procloc; //process location
	procloc = getFree();
 
	//if page table is in memory, then evict one page (using evictPage function) and mark it as the new Page Frame number in the page table entry of the page table
  
	if(PTF == -1){
		int mypfn=choosePageEvict(PID);
		int slot=evict(mypfn,PID);
		PTF=mypfn;
		printf("We swapped frame %i to disk at SWAPPED SLOT % i",PTF,slot);
	} 
	if(procloc == -1){
		int mypfn=choosePageEvict(PID);
		int slot=evict(mypfn,PID);
		procloc=mypfn;
		printf("We swapped frame %i to disk at SWAPPED SLOT % i",PTF,slot);
	}
	PDBR[PID][procloc]=1;	
	//unsigned int myoffset = offsetTrans(virtual_add); //calculate offset

	unsigned int myVPN = VPNtranslation(virtual_add); //calculate VPN
	
	unsigned int protecBit = (value << 2); //find protection bit

	unsigned int varPTE = ( 0x8 | protecBit | procloc | preBit); //find page table entry

	unsigned int PTI = ((16*PTF) + myVPN); //find page table index
	//printf("PTI: %u\n", PTI);

	memory[PTI] = (varPTE << 4); //place in memory
	PTBR[PID] = PTF; //update page table frame
	
	printf("Put page table for PID %d into physical frame %d\n", PID, PTF);
	printf("Mapped virtual address %d (page %d) into physical frame %d\n", virtual_add, PID, procloc);

	
}

void store(int PID, int virtual_add, int value){

	if(value < 0 || value > 255){ //error checking
		printf("ERROR! This is an invalid entry\n");
	}

	int PTPFN = PTBR[PID]; //find page frame number from page table 
	unsigned int myoffset = offsetTrans(virtual_add); //calculate offset
	//printf("offset: %d\n", myoffset);
	unsigned int myVPN = VPNtranslation(virtual_add); //calculate VPN
	//printf("VPN: %d\n", myVPN);
	unsigned int PTI = ((16 * PTPFN)+myVPN); //find page table index 
	unsigned char PTE = memory[PTI]; //find page table entry
	
	if(!validbitTrans(PTE)){ //if not valid print error
		printf("ERROR! Segmentation fault.\n"); 
		return;
	}
	if(!probitTrans(PTE)){//if not protected print error
		printf("ERROR! Cannot write to this page.\n");
		return;
	}
	if(!presentTrans(PTE)){
		printf("ERROR! Page Fault.\n");
		//insert swap here
		int ePFN=getFree();
		if(ePFN==-1){
			ePFN=choosePageEvict(PID);
			evict(ePFN,PID); 
		}
		swapPageIn(ePFN,myVPN,PID);
		printf("THE PAGE HAS BEEN SWAPPED WITH PID %i\n", PID); 
		return;
	}

	unsigned int PFN = getPFN(PTE); //find page fram number 
	
	unsigned int phyindex = ((16 * PFN)+myoffset); //translate to physical address
	
	memory[phyindex] = value; //place physical address in memory 
	printf("Stored value %d at virtual address %d (physical address %d)\n", value, virtual_add, phyindex);


}

void load(int PID, int virtual_add, int value){
	if(value < 0 || value > 255){
		printf("ERROR! This is an invalid entry\n"); //error checking
	}

	int PTPFN = PTBR[PID];
	unsigned int myoffset = offsetTrans(virtual_add); //calculate the offset
	//printf("offset: %d\n", myoffset);
	unsigned int myVPN = VPNtranslation(virtual_add); //calculate the VPN
	//printf("VPN: %d\n", myVPN);
	
	unsigned int PTI = (16*PTPFN)+myVPN; //find page table index 
	unsigned char PTE = memory[PTI]; //find page table entry

	if(!validbitTrans(PTE)){//if not valid, return an error
		printf("ERROR! Segmentation Fault.\n"); 
		return;
	}
	if(!presentTrans(PTE)){
		printf("ERROR! Page Fault.\n");
		//insert swap here
		int ePFN=getFree();
		if(ePFN==-1){
			ePFN=choosePageEvict(PID);
			evict(ePFN,PID); 
		}
		swapPageIn(ePFN,myVPN,PID);
		printf("THE PAGE HAS BEEN SWAPPED WITH PID %i\n", PID);
		return;
	}

	unsigned int PFN = getPFN(PTE); //find page frame number
	unsigned int phyindex = (PFN * 16)+myoffset; //translate to physical address
	unsigned int myval = (int)memory[phyindex]; //place physical address in memory
	

	printf("Loaded value %d at virtual address %d (physical address %d)\n", myval, virtual_add, phyindex);

	
}

int main(int argc, char *argv[]){

	//the follwing is for parsing a file 
	char cmd[100]; 
	for (int i=0;i<PAGE;i++){
		for(int j=0;j<PAGE;j++){
			PDBR[i][j]=-1;
		}
	}
	disk = fopen("disk", "wb+");
	
	while(1){
		
		printf("Instruction?: ");
		if(!fgets(cmd, sizeof cmd, stdin)){
			printf("END OF FILE!\n");
			exit(0);
		}
		printf("%s", cmd);
		char* token = strtok(cmd, ",");
		PID = atoi(token);
		//printf("PID: %i\n", PID);
		if(PID <0 || PID > 3){
			printf("ERROR! Must be in range 0 and 3\n");
			exit(0);
		}
		for(int i=0; (token != NULL) && (i<3); i++){
			token=strtok(NULL, ",");
			char *l = strchr(token, '\n');
			if(l){
				*l = 0;
			}
			if(i==0){
				command_type=token;
				//printf("Instruction: %s\n", command_type);
				
			}
			if(i==1){
				virtual_add=atoi(token);
				if(virtual_add < 0 || virtual_add > 63){
					printf("ERROR! Must be in range 0 and 63\n");
				}
				//printf("VirtualAdd: %i\n", virtual_add);
			}
			if(i==2){
				value=atoi(token);
				//printf("Value: %i\n", value);
			}

		}

		//find out what command it is and do the command found 
		if(!strcmp(command_type, "map")){
			map(PID, virtual_add, value);
		}
		if(!strcmp(command_type, "load")){
			load(PID, virtual_add, value);
		}
		if(!strcmp(command_type, "store")){
			store(PID, virtual_add, value);
		}
	}	
	fclose(disk);
	return 0;
}



