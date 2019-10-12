#include "bathroomSim.h" 

void *individual(void *arg) {
  pinfo *m = (pinfo *) arg;
  
  //intialize variables needed for stats
  int min_wait = m->min;
  int max_wait = m->max;
  int avg_wait = m->avg;

  min_wait = 999999999; //intialize to a large number
  max_wait = 0;
  avg_wait = 0;

  int trip = m->loopcount;
  int looptrip = trip;
  int counttrip = 0;
  
	//printf("Thread [%d]\n gender:%s\n arrival_time:%d\n loopcount:%d\n stay: %d\n\n",m->myid, m->g?"female":"male", m->arrival, m->loopcount, m->stay);
     while(--looptrip >= 0){
 	for (int i=0;i<m->loopcount;i++){
	  //this is randmoized at each iteration
	  int entered = (int)(normalrandom(m->arrival, m->arrival/2));
	  usleep(entered);//moved this here
          clock_t start = clock();
          Enter(m->g,m->myid);
	  float waittime= clock()-start;
	  {
		avg_wait += waittime; //find the max wait
		if(waittime > max_wait){
			max_wait=waittime;
		}
		if(waittime < min_wait){//find the min wait
			min_wait=waittime;
		}
	  }
          //Got to have gender mutual exclusion.
          assert(cb.count_male == 0 || cb.count_female ==  0);
          //printf("My gender is %s\n",  m->g?"female":"male");
          //randomized stay (randomized at eeach iteration)
	  int randstay = (int)(normalrandom(m->stay, m->stay/2)); 
	  usleep(randstay);
	  Leave(m->g,m->myid);
 	  counttrip++;
          //printf("After (thread [%d] leaves) count (number of people in bathroom) =%i \n",m->myid,cb.count);
	}
      }
	//printf("Thread [%d] has completed all iterations!\n",m->myid);
	
	
	printf("Thread ID: %d\n Gender: %s\n Loops: %i\n Minimum: %i\n Maximum: %i\n Average: %i\n\n", m->myid, m->g?"female":"male", trip, min_wait, max_wait, avg_wait/(trip+1));

	return NULL;
}

int main(int argc, const char* argv[]){//the master thread
  //add default parameters
  int nUsers;
  int meanLoopCount;
  int meanArrival;
  int meanStay;
 if (argc==5){
  nUsers =atoi(argv[1]);
  meanLoopCount =atoi(argv[2]);
  meanArrival =atoi(argv[3]);
  meanStay =atoi(argv[4]);
  }else{//default
  nUsers =2;
  meanLoopCount =3;
  meanArrival =2;
  meanStay =2;
  }
  int status = 0;
  pthread_attr_t attr;
  status = pthread_mutex_init(&(cb.bmutex), NULL); //initializing lock structure
  if(status != 0) 
    error_abort(status, "mutex initialization failed");
    
  status = pthread_cond_init(&(cb.bcond),NULL);
  if(status != 0) 
    error_abort(status, "conditional variable initialization failed");
  //Bathroom is vacant
  cb.g=2;

  if(nUsers < 0 || meanLoopCount < 1 || meanArrival < 0 || meanStay < 0){
    printf("ERROR! Invalid enrty\n");
    }

  /* For portability, explicitly create threads in a joinable state */
  pthread_attr_init(&attr);
  pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);

	

	srand(time(NULL)); 
	initialize();

	//initialize the arguments and randomize where needed
        pinfo * args = (pinfo*)(calloc(nUsers,sizeof(pinfo)));
     printf("Begin bathroom simulation with %d threads:\n\n", nUsers);
     for (int i=0;i<nUsers;i++){
	int gender =rand()%2;
	args[i].g=gender;
	args[i].myid=i;
        args[i].arrival = meanArrival;
 	args[i].loopcount = (int)(normalrandom(meanLoopCount, meanLoopCount/2));
        args[i].stay = meanStay;
	//Check the status value for error detection
	status = pthread_create(&args[i].id, &attr, individual, &args[i]);
        
     }
	//individual user stats
	printf("Print out the Statistics: \n");	
     
  /* Wait for all threads to complete */
     for (int i=0;i<nUsers;i++){
       pthread_join(args[i].id, (void **) &cb);
	}

     assert(cb.count == 0);//Make sure no one is left behind in the bathroom

  //printf ("Main(): Waited and joined with %d threads. Final value of count = %d. Done.\n", nUsers, cb.count);

  //master stats
  finalize();
  printf("End of bathroom simulation!\n");

  /* Clean up and exit */
  pthread_attr_destroy(&attr);
  pthread_mutex_destroy(&(cb.bmutex));
  pthread_cond_destroy(&(cb.bcond));
  pthread_exit (NULL);

  //return 0;
	
}
