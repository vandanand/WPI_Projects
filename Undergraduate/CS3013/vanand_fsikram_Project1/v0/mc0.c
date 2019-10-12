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
	int option;
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
	printf("Option? ");
	scanf("%d", &option);
	printf("The number you typed was %d\n\n", option);

	gettimeofday(&t1,NULL);
	switch(option) {
		
		case 0: 
			printf("---whoami----\n");
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

		case 1:
			printf("----last login---\n");
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

		case 2: 
			printf("---directory listing---\n");
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

