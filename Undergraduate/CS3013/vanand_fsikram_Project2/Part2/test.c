#include <sys/syscall.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/wait.h>
#include <unistd.h>
#include "struct.h"


#define __NR_cs3013_syscall2 378

long testCall2(void){
    return (long) syscall(__NR_cs3013_syscall2);
}


int main(){
   	   
            printf("Syscall 2\n\n");
            pid_t init_pid = 1;
            
            struct ancestry tree; //accessing the struct

	    long returnval = (long) syscall(__NR_cs3013_syscall2, &init_pid, &tree); //making syscall
    
            if(returnval == -1){
                printf("Error Occured\n");
                return returnval;
            }else{ //if no error then...
                printf("Ancestry Tree\n\n");
                
                printf("Target ID: %i\n", (int)tree.target[0]); //find the target pid out of all the processes on the system

		printf("Ancestors\n"); //print out its ancestors
                for(int y = 0; y < 99; y++){ //going through 100
                    if(tree.ancestors[y] < 1){//invalid
                        break;
                    }
                    else{
                        printf(" %i -> Ancestor ID: %i\n", y+1, (int)tree.ancestors[y]);
                    }//print out list number and ID number
                }
                
                printf("Children\n"); //print out its children
                for(int x = 0; x < 99; x++){ //going through 100 
                    if(tree.children[x] < 1){ //not valid
                        break;
                    }
                    printf("%i  -> Child ID: %i\n", x+1, tree.children[x]); 
                }//print out list number and ID number


                printf("Siblings\n"); //print out its siblings
                for(int z = 0; z < 9; z++){ //going through 10 
                    if(tree.siblings[z] < 1){//invalid
                        break;
                    }
                    else{
                        printf("%i -> Sibling ID: %i\n", z+1, (int)tree.siblings[z]);
                    }//print out list number and ID number
                }
	}
                
     
    return 0;
}
