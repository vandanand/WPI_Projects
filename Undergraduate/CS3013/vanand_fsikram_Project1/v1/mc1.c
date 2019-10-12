#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <string.h>
#include <sys/time.h>
#include <sys/resource.h>
#include <unistd.h>
#include <sys/types.h>

int main() {
	char option;
	int starttime;
	int endtime;
	struct rusage rus; //RUSAGE_CHILDREN
	int pid;
	struct timeval t1, t2;
	double totaltime;


	printf("========Mid-Day=========\n");
	printf("G'day, Commander! What command would you like to run?\n");
	printf("0. whoami : prints out the whoami command\n");
	printf("1. last   : prints out the last command\n");
	printf("2. ls     : prints out the result of a listing of a user specified path\n");
	printf("a. add command : Adds a new command to the menu\n");
	printf("c. change directory : Changes process working directory\n");
	printf("e. exit : Leave Mid-Day Commander\n");
	printf("p. pwd : Prints working directory\n");
	printf("Option? ");
	scanf("%c", &option);
	printf("The character you typed was %c\n\n", option);

	gettimeofday(&t1,NULL);
	switch(option) {
		
		case '0': 
			printf("---Whoami----\n");
	       		int rc = fork();
			pid=rc;
	       		if (rc < 0) {
	         	// fork failed; exit
	       			fprintf(stderr, "fork failed\n");
	       			exit(1);
	   		} else if (rc == 0) {
	       			char *myargs[2];
	       			myargs[0] = strdup("whoami"); 
	       			myargs[1] = NULL;          
	      			execvp(myargs[0], myargs);  
   			} else {
        			// parent goes down this path (original process)
        			int wc = wait(NULL);
    			}
		break;

		case '1':
			printf("----Last Login---\n");
	       		rc = fork();
			pid=rc;
	       		if (rc < 0) {
	         	// fork failed; exit
	       			fprintf(stderr, "fork failed\n");
	       			exit(1);
	   		} else if (rc == 0) {
	       			char *myargs[2];
	       			myargs[0] = strdup("last"); 
	       			myargs[1] = NULL;          
	      			execvp(myargs[0], myargs);  
   			} else {
        			// parent goes down this path (original process)
        			int wc = wait(NULL);
    			}
		break;

		case '2': 
			printf("---Directory Listing---\n");
			rc= fork();
			pid=rc;
	       		if (rc < 0) {
	         	// fork failed; exit
	       			fprintf(stderr, "fork failed\n");
	       			exit(1);
	   		} else if (rc == 0) {
				char arge[20];
				char path[20];
				printf("Arguments?\n");
				scanf("%s", arge);
				printf("Path?\n");
				scanf("%s", path);
				char *myargs[4];
	       			myargs[0] = strdup("ls"); 
	       			myargs[1] = arge; 
	       			myargs[2] = path;
	       			myargs[3] = NULL;     
	      			execvp(myargs[0], myargs);  
   			} else {
        			// parent goes down this path (original process)
        			int wc = wait(NULL);
    			}
		break;
		
		case 'a': printf("--Add a command--\n"); 
			  char addc[128];
			  printf("Command to add?: \n");
			  scanf("%s", addc);
			  printf("Okay, added with ID **!");
				
		break;
		
		case 'c': printf("--Change Directory--\n"); 
			  char change[128];
			  printf("New Directory?: \n");
			  scanf("%s", change);
			  chdir(change);

		break;

		case 'e': printf("Logging you out, Commander."); 
		break;

		case 'p': printf("--Current Directory--\n"); 
			  char cwd[1024];
			  if (getcwd(cwd, sizeof(cwd)) != NULL){
				fprintf(stdout, "Directory: %s\n", cwd);
			  }
	
		break;

		default: printf("Oops you entered the wrong input!\n");
			
		break;
	}

	gettimeofday(&t2,NULL);
	getrusage(pid, &rus);
	long ru_minflt;
	long ru_majflt;
	totaltime += (t2.tv_usec - t1.tv_usec)/1000;


	printf("\n");
	printf("----Statistics----\n");
	printf("Elapsed time: %f \n",totaltime);
	printf("Page faults: %ld \n", ru_majflt);
	printf("Page faults reclaimed: %ld \n", ru_minflt);

}

