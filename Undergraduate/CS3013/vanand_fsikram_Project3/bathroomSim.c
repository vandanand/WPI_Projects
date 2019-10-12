#include "bathroomSim.h" 
//NOTE: the Bathroom struct is cb short for communal bathroom

//initialize the bathroom
void initialize(){
	cb.sstart = clock(); //for the time
	cb.end = clock();
	cb.average =0;
	
}

//print final stats for bathroom
void finalize(){
	int total = clock()-cb.sstart;
	printf("There was a maximum of: \n %i men \n %i women\n The total number of people who entered the bathroom is:\n %i men \n %i women \n The average # of people waiting for the bathroom is %i\n\n", cb.maxmen, cb.maxwomen, cb.totalmen, cb.totalwomen, cb.average/total);
}

void masterstats(gender g){
	if(g==0){//if the gender is male
		cb.totalmen++; //increment to find total # of men
		if(cb.count > cb.maxmen){ 
			cb.maxmen = cb.count; //find total male threads
		}
	}
	if(g==1){//if gender is female
		cb.totalwomen++; //increment to find total # of women
		if(cb.count > cb.maxwomen){
			cb.maxwomen = cb.count; //find total female threads
		}
	}
	clock_t nstart = clock();
	cb.average += cb.count*(nstart-cb.end); //find average # of threads waiting
	cb.end = nstart;
}


//normal distrubution random number generator
int normalrandom(double mean, double standev)
{
    double ran1 = 0.0;
    int stored = 0;
    if (!stored)
    {
        double num1, num2, total;
        do {
            num1 = drand48(); //generate two random number and store in a variable
            num2 = drand48();
            total = num1*num1 + num2*num2;
        } while(total == 0.0 || total > 1.0);   

        double val = sqrt(-2.0*log(total)/total); //using box muller method
        double ran2 = num1*val;
        ran1 = num2*val;
        double ans = ran2*standev + mean; //use recent ramdom number
        stored = 1;
        return ans;
    }
    else {
        stored = 0;
        return ran1*standev + mean; //use first random number
    }
}

//function enter that simply increments a counter
void Enter(int g,int id){
	pthread_mutex_lock(&(cb.bmutex));
	//printf("Thread [%d] is %s has Entered and attained lock!\n",id, g?"female":"male");

	while((cb.g != g) && (cb.count>0)){
      		//printf("Enter(): thread %d  Going into wait...\n", id);
     		pthread_cond_wait(&(cb.bcond), &(cb.bmutex));
      		//printf("Enter: thread %d Condition signal received.\n", id);
    	}
	//printf("The bathroom gender is %d \n", g);
	cb.g = g;
	++cb.count;
	if(g==1){
		assert(cb.count_male == 0);
		++cb.count_female;
		//printf("Female count is incremented to: %d \n", cb.count_female);
	}else if(g==0){
		assert(cb.count_female== 0);
		++cb.count_male;
		//printf("Male count is incremented to: %d \n", cb.count_male);	
	}
	masterstats(g);
	pthread_mutex_unlock(&(cb.bmutex));
	//printf("Thread [%d] released lock and is doing bussiness\n",id);
	return;
}

//function leave that decrements the counter in bathroom
void Leave(int g, int id){
	pthread_mutex_lock(&(cb.bmutex));
	//Decrement the count.
	--cb.count;
	if(g==1){
		//should not decrement a zero value.
		assert(cb.count_female > 0);
		--cb.count_female;
		//printf("Thread %d completed iteration. Female count is decremented to: %d \n",id, cb.count_female);
	}
	else if(g==0){
		//should not decrement a zero value.
    		assert(cb.count_male > 0);
    		--cb.count_male; 
    		//printf("Thread %d completed iteration. Male count is decremented to: %d \n", id,cb.count_male);
  	}

        if((cb.count_male == 0 ) && (cb.count_female == 0)) {
        	pthread_cond_broadcast(&(cb.bcond));//broadcast
        	assert(cb.count == 0);
         	cb.g = 2;//vacancy
        }
  
  pthread_mutex_unlock(&(cb.bmutex));
  //printf("Thread ID %d is %d has Left and let go of the lock!\n",id, g);
  return;
}



