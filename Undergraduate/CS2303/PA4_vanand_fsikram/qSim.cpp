#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <deque>      // for deque
#include <iostream>   // for cout, endl
#include <queue>      // for priority_queue
#include <string>     // for string
#include <vector>     // for vector
#include <cstdlib>
#define IDLE_MAX 600
#include "qSim.h"
//Stats.h and cpp

class Statistics {
public:
  Statistics (){};
  unsigned int NumOfCustomers;
  unsigned int AvgCustTime;
  unsigned int MaxWaitTime;
  unsigned int CustTimeSD;
  unsigned int *Customers;

  unsigned int NumOfTellers;
  unsigned int *Tellers;
  void initialize(unsigned int,unsigned int );
  void PrintStats();
  void computeAvg();
  void FindMax();
  void computeSD();
  ~Statistics(){
    delete [] Customers;
    delete [] Tellers;
  }
}Stats;

void Statistics::PrintStats(){
  computeAvg();
  computeSD();
  FindMax();
  std::cout <<"Customers Average waiting time "<<AvgCustTime<<std::endl;
  std::cout <<"Customers Max waiting time "<<MaxWaitTime<<std::endl;
  std::cout <<"Customers SD time "<<CustTimeSD <<std::endl; 

}

void Statistics::initialize(unsigned int cust, unsigned int tels){
  NumOfCustomers = cust;
  NumOfTellers = tels;
  AvgCustTime = 0;
  MaxWaitTime = 0;
  CustTimeSD = 0;
  Customers = new unsigned int [cust];
  Tellers = new unsigned int [tels];
  for(unsigned int i=0; i < cust; i++)
    Customers[i] = 0;
  for(unsigned int i=0; i < tels; i++)
    Tellers[i] = 0;
}
void Statistics::FindMax(){
  for(unsigned int i=0; i < NumOfCustomers; i++)
    {
      MaxWaitTime = 0;
      if(Customers[i]> MaxWaitTime)
	MaxWaitTime = Customers[i];
    }
}
void Statistics::computeAvg(){
  for(unsigned int i=0; i < NumOfCustomers; i++)
    AvgCustTime += Customers[i];
  AvgCustTime = AvgCustTime/NumOfCustomers;
}

void Statistics::computeSD(){
  unsigned int dev = 0;
  for(unsigned int i=0; i < NumOfCustomers; i++)
    dev += (Customers[i]- AvgCustTime)*(Customers[i]- AvgCustTime);
  dev= dev/(NumOfCustomers - 1);
 
  CustTimeSD = sqrt(dev);
}


/*
 * event.h
 *
 *  Created on: Feb 11, 2017
 *      Author: student
 */


class event {
public:
  // Construct sets time of event.
  event (unsigned int t,bool c, int eventT,unsigned int id,unsigned int start,unsigned int tid)
    : time (t),cort(c) ,eventType(eventT),startTime(start), ID(id),TID(tid)
  { }
  // Execute event by invoking this method.
  void processEvent ();
  const unsigned int time;//time of event
  bool cort;//true for customer, false for teller
  int eventType;//1 for arriving customer, 1 for free teller, 2 for waiting customer, 0 for serviced customer.
  event *next;
  unsigned int startTime;
  unsigned int ID;
  unsigned int TID;//Only will be used by waiting event for teller ID queue.
  ~event(){}

};



//Will go into linkededlist.cpp
class LinkedList
{
public:
  // Head of the list contains no song data,
  // but points to the song playlist.
  event * head;
  unsigned int listLength;

  // Default Constructor creates the head node.
  LinkedList();

  // Setter adds a node to the list at a given position.
  // Takes a node and list position as parameters.
  // Position must be between 1 and the number of data nodes.
  // Returns true if the operation is successful.
  bool insertNode( event * newNode);

  // Pope the head of the list.
  bool removeHead( );

  // Prints each node in the list in consecutive order,
  // starting at the head and ending at the tail.
  // Prints list data to the console.
  void printList();

  // Destructor de-allocates memory used by the list.
  ~LinkedList();
};



/*
 * Simulation.h
 *
 *  Created on: Feb 11, 2017
 *      Author: student
 */

class simulation {
public:
  simulation () : time (0), eventQueue ()
  {}
  void run ();
  void  scheduleEvent (event * newEvent) {
    eventQueue.insertNode (newEvent);
  }
  unsigned int NextTeller(){
    unsigned int nextTeller = 0;
    for(unsigned int i=0; i < numTellers; i++){
      if(Tellers[i] == 0)
	return i;
      else if(nextTeller > Tellers[i])
	nextTeller = Tellers[i];
    }
    return nextTeller;
  };
  void printEventQueue(){
    eventQueue.printList();
  }
  unsigned int time;//current simulation time(look at this)
  unsigned int sTime;//the total simulation time
  unsigned int averageServiceT;
  unsigned int numTellers;
  unsigned int busytellers;
  unsigned int TellersServiceTime;
  unsigned int TellersIdleTime;
  unsigned int *Tellers;//How many Customers each teller have in his queue.
  unsigned int *TellersWaitTime;//How much time this guy will be busy.
  LinkedList eventQueue;
  bool simType;//0 for single queue and 1 for multiple queue.
}theSimulation;



/*
 * qSim.h
 *
 *  Created on: Feb 11, 2017
 *      Author: student
 */

unsigned int irand(unsigned int n);
void help();




//using namespace std;


void event::processEvent () {
  //	std::cout<<"At time"<<time<<std::endl;
  if(theSimulation.simType == false){
    if(cort){//customer
      if(eventType==0){//Arrival event
	//std::cout<<"I am a customer arrival event."<<std::endl;
	if(theSimulation.numTellers>theSimulation.busytellers){
	  //	std::cout<<"There are available tellers"<<std::endl<<"there is one tellerEvent and one serviced Customer Event";
	  (theSimulation.busytellers)++;
	  //randomize a service time here
	  float servicetime = irand(theSimulation.averageServiceT);
	  theSimulation.TellersServiceTime += servicetime;
	  Stats.Customers[ID] = time+servicetime - startTime;
	  //A customer event that being processed
	  theSimulation.scheduleEvent (new event (time+servicetime,true,1,ID,startTime,0));
	  //teller event servicing the customer.
	  theSimulation.scheduleEvent(new event(time+servicetime,false,1,ID,time+servicetime,0));
	  //Stats.Tellers[ID] = time+servicetime - startTime;//Fixme please, ID is wrong and so is calculation.
	}else{//Customer waiting
	  //Create new waiting event with time increment.
	  //add a new availble teller
	  //	std::cout<<"I increment "<<std::endl;
	  float nextTime=time+1;
	  theSimulation.scheduleEvent(new event(nextTime,true,0,ID,startTime,0));
	  //print/store some stats here
	}
      }else if(eventType == 1){//leaving event

	//store stats here move on
	//std::cout << "Customer" << ID << " done at Time ="<<time<<std::endl;
      } else {
	std::cerr << "Cannot handle this CustomerType = "<< eventType<<std::endl;

      }
    }else{//teller event

      if(theSimulation.numTellers == theSimulation.busytellers) {
	//No teller available, make yourself available by killing yourself.
	//decrement busy tellers, killing myself
	(theSimulation.busytellers)--;
      }else{
	//A condition to check that we are done with all the customers.
	if(theSimulation.busytellers * 2 >= theSimulation.eventQueue.listLength){
	  (theSimulation.busytellers)--;
	} else {

	  //Either kill yourself by doing nothing or if other tellers are available do some idle work.
	  //fornow just goto idle.

	  //randomize a idle time here

	  float idletime = irand(theSimulation.averageServiceT);
	  theSimulation.TellersIdleTime += idletime;
	  //teller event idling.
	  theSimulation.scheduleEvent(new event(time+idletime,false,0,ID,time+idletime,0));
	}
      }

    }
  }
  else {
    //Multiple queue simulation.
    if(cort){//customer
      if(eventType==0){//Arrival event
	//Find a teller.
	unsigned int myteller = theSimulation.NextTeller();
	bool mytellerfree = (theSimulation.Tellers[myteller] == 0);
	if(mytellerfree){
	//std::cout<<"I am a customer arrival event."<<std::endl;
	  //	std::cout<<"This teller is free."<<std::endl<<"there is one tellerEvent and one serviced Customer Event";
	  //randomize a service time here
	  float servicetime = irand(theSimulation.averageServiceT);
	  theSimulation.TellersServiceTime += servicetime;
	  Stats.Customers[ID] = time+servicetime - startTime;
	  //A customer event that being processed
	  theSimulation.scheduleEvent (new event (time+servicetime,true,1,ID,startTime,myteller));
	  //teller event servicing the customer.
	  theSimulation.scheduleEvent(new event(time+servicetime,false,1,ID,time+servicetime,myteller));
	  //myteller will be busy for this much time.
	  theSimulation.TellersWaitTime[myteller]=servicetime;
	  //Increase the number of customers with the my teller.
	  ++(theSimulation.Tellers[myteller]);
	}else{//Customer waiting, teller busy.
	  //Create new waiting event with time increment equal to teller busy time.
	  float nextTime=time+theSimulation.TellersWaitTime[myteller]+1;
	  theSimulation.scheduleEvent(new event(nextTime,true,2,ID,startTime,myteller));//A waitevent.
	  //print/store some stats here
	  ++(theSimulation.Tellers[myteller]);
	}
      }else if(eventType == 2){//A waiting event.
	//In this case, we don't need to find a teller, as we already have an assigned teller.
	bool mytellerfree = (theSimulation.Tellers[TID] == 0);
	if(mytellerfree){
	//std::cout<<"I am a customer arrival event."<<std::endl;
	  //	std::cout<<"This teller is free."<<std::endl<<"there is one tellerEvent and one serviced Customer Event";
	  //randomize a service time here
	  float servicetime = irand(theSimulation.averageServiceT);
	  theSimulation.TellersServiceTime += servicetime;
	  Stats.Customers[ID] = time+servicetime - startTime;
	  //A customer event that being processed
	  theSimulation.scheduleEvent (new event (time+servicetime,true,1,ID,startTime,TID));
	  //teller event servicing the customer.
	  theSimulation.scheduleEvent(new event(time+servicetime,false,1,ID,time+servicetime,TID));
	  //myteller will be busy for this much time.
	  theSimulation.TellersWaitTime[TID]=servicetime;
	  ++(theSimulation.Tellers[TID]);
	  
	}else{//Customer waiting, teller busy.
	  //Create new waiting event with time increment equal to teller busy time.
	  float nextTime=time+theSimulation.TellersWaitTime[TID]+1;
	  theSimulation.scheduleEvent(new event(nextTime,true,2,ID,startTime,TID));//A waitevent.
	  //this time we shall not 	  ++(theSimulation.Tellers[myteller]); as customer is already assigned.
	  //print/store some stats here
	}
	//store stats here move on
	//std::cout << "Customer" << ID << " done at Time ="<<time<<std::endl;
      }else if(eventType == 1){//leaving event
		  --(theSimulation.Tellers[TID]);
	//store stats here move on
	//std::cout << "Customer" << ID << " done at Time ="<<time<<std::endl;
      }
      else {
	std::cerr << "Cannot handle this CustomerType = "<< eventType<<std::endl;

      }
    }else{//teller event

      if(theSimulation.Tellers[TID] > 0) {
	//Customer waiting, make yourself available by killing yourself.
      }else{
	//randomize a idle time here
	  float idletime = irand(theSimulation.averageServiceT);
	  theSimulation.TellersIdleTime += idletime;
	  //teller event idling.
	  theSimulation.scheduleEvent(new event(time+idletime,false,0,ID,time+idletime,TID));
	
      }



    }
  }
};

/*
 * LinkedList.cpp
 *
 *  Created on: Feb 11, 2017
 *      Author: student
 */

// Default Constructor
LinkedList::LinkedList()
{
  head = NULL;
  listLength = 0;
}


// Setter adds a node to the list at the position where left node is smaller than
// it and right node is greater or equeat than it in terms of time.
// Returns true if the operation is successful.
bool LinkedList::insertNode( event * newNode)
{
  //If it is the first element, it will go the head.
  if (head == NULL)
    {
      head = newNode;
      head->next = NULL;
      listLength++;
      return true;
    }

  if(head->next == NULL) {
    if(head->time <= newNode->time){
      head->next =newNode;
      head->next->next = NULL;
    }
    else {

      newNode->next = head;
      head = newNode;
      head->next->next=NULL;
    }
    listLength++;
    return true;
  }

  //If the newNode will be new head, let us deal with it here.

  if (head->time >= newNode->time)
    {
      newNode->next = head;
      head = newNode;
      listLength++;
      return true;
    }


  //Now, we know here, we have at least two elements in the list
  //For any pair of nodes, new node come before first node,
  // or in the middle of two nodes or
  // at the tail of two nodes.
  event * p = head;
  event * q = head->next;
  while (q)
    {

      if((p->time < newNode->time)&&( newNode->time <= q->time)) //Will be added in the middle
	{
	  p->next = newNode;
	  newNode->next = q;
	  listLength++;
	  return true;
	}

      p = q;
      q = p -> next;
    }

  //Now we are at the tail of the list.
  if(q == NULL){
    p -> next = newNode;
    newNode -> next = NULL;
    listLength++;
    return true;

  }

  std::cout << "nError: node was not added to list.n";
  return false;
}


// Setter removes a node by its given position.
// Returns true if the operation is successful.
bool LinkedList::removeHead( )
{
  event * p = head;
  if (head == NULL)
    {
      std::cout << "nError: there is nothing to remove.n";
      return false;
    }
  if (head->next == NULL)
    {
      head = NULL;
      listLength = 0;
      #ifdef DEBUG
      //std::cout << "Last element of the list is popped.";
      #endif
      return true;
    }
  //Now we got a list of at least 2.
  head = head->next;
  --listLength;
  //cleanup the head allocation.
  delete p;
  return true;
}

// Prints each node in the list in consecutive order,
// starting at the head and ending at the tail.
// Prints the data to the console.
void LinkedList::printList()
{
  event * p = head;
  event  * q = head;
  std::cout << "n---------------------------n";
  std::cout << "Our Linked list. n";
  int count = 0;
  while (q)
    {
      p = q;
      std::cout << "n-----------------------------n";
      std::cout << "t position: " << count <<std::endl;
      std::cout << "t time: " << p -> time << std::endl;
      q = p -> next;
      count++;
    }
}


// Destructor de-allocates memory used by the list.
LinkedList::~LinkedList()
{
  event * p = head;
  event * q = head;
  while (q)
    {
      p = q;
      q = p -> next;
      if (q) delete p;
    }
}

void simulation::run () {

  while (eventQueue.head != NULL) {

    event * nextEvent = eventQueue.head;//first item in event
    time = nextEvent->time;
    //Check if Simulation time is over.
    //if(sTime == time)
    //  break;
    nextEvent->processEvent ();
    eventQueue.removeHead ();
    // delete nextEvent;

  }
};




unsigned int irand(unsigned int n)
// return random integer greater than
// or equal to 0 and less than n
{
  return rand() % n;
}

using namespace std;

int main(int argc, const char* argv[]){
  int customers, tellers;
  float simTime, avgServiceTime;
  //seed is optional
  if(argc<5){
    std::cerr<<"Not enough arguments.";
    exit(1);
  }
  customers = atoi(argv[1]);
  tellers = atoi(argv[2]);//copy to the theSimulation object.
  simTime= atoi(argv[3]);
  avgServiceTime= atoi(argv[4]);
  if(customers<=0||tellers<=0||simTime<=0||avgServiceTime<=0){
    std::cerr<<"Entries for arguments not valid.";
    exit(1);
  }
  theSimulation.numTellers=tellers;
  theSimulation.TellersWaitTime=new unsigned int [tellers];
  theSimulation.Tellers=new unsigned int [tellers];
  theSimulation.sTime=simTime;
  theSimulation.averageServiceT=avgServiceTime;

  for(int i=0; i < tellers; i++){
    theSimulation.TellersWaitTime[tellers]=0;
    theSimulation.Tellers[tellers]=0;
  }
  Stats.initialize(customers,tellers);

  for(int i=0;i<customers;i++){
    float arrtime = irand(simTime);
    //	std::cout<<"I am printing the "<<i<<"th customer"<<std::endl;
    theSimulation.scheduleEvent (new event (arrtime,true,0,i,arrtime,0));

  }
  
  //First run in single queue mode.
  theSimulation.simType = false;
  theSimulation.run();
  cout <<"End of Single Queue Simulation" << endl;
  Stats.PrintStats();
  cout <<"Tellers service time "<<theSimulation.TellersServiceTime <<endl;
  cout <<"Tellers idle  time "<<theSimulation.TellersIdleTime <<endl;

  //Next run in Multiple queue mode.
  //Reset everything.
   theSimulation.numTellers=tellers;
  theSimulation.TellersWaitTime=new unsigned int [tellers];
  theSimulation.Tellers=new unsigned int [tellers];
  theSimulation.sTime=simTime;
  theSimulation.averageServiceT=avgServiceTime;

  for(int i=0; i < tellers; i++){
    theSimulation.TellersWaitTime[tellers]=0;
    theSimulation.Tellers[tellers]=0;
  }
  theSimulation.simType = true;
  //Reload events
  for(int i=0;i<customers;i++){
  float arrtime = irand(simTime);
  //	std::cout<<"I am printing the "<<i<<"th customer"<<std::endl;
  theSimulation.scheduleEvent (new event (arrtime,true,0,i,arrtime,0));

  }
  
 

  Stats.initialize(customers,tellers);
  theSimulation.run();
  cout <<"End of Multiple queue Simulation" << endl;
  Stats.PrintStats();
  cout <<"Tellers service time "<<theSimulation.TellersServiceTime <<endl;
  cout <<"Tellers idle  time "<<theSimulation.TellersIdleTime <<endl;
 


  delete [] theSimulation.Tellers;
  delete [] theSimulation.TellersWaitTime;

  //Stats.~Statistics();
}
void help(){
  std::cout <<"The user should enter the code in the following manner:";
}
