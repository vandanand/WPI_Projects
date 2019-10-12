#ifndef BATHROOMSIM_H
#define BATHROOMSIM_H
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <assert.h>
#include <unistd.h>
#include <math.h>
#include <sys/types.h>
#include <utime.h>
#include <unistd.h>
#include <string.h>
int normalrandom(double mean, double standev);
typedef enum gender {male=0, female=1, vacant=2} gender;

typedef struct _pinfo {
  pthread_t id;
  int myid;
  int g;//0 is male and 1 is female
  int min;
  int max;
  int avg;
  int stay;
  int arrival;
  int loopcount;

} pinfo;


typedef struct _bathroom{
  pthread_mutex_t bmutex; 
  pthread_cond_t bcond;//=PTHREAD_COND_INITIALIZER;
  int g;//0 is male and 1 is female, 2 is vacant
  int x; 
  int y;
  int count;//use for initial lock testing
  int count_female;
  int count_male;
  int min;
  int avg;
  int max;
  clock_t sstart;
  clock_t end;
  int maxmen;
  int maxwomen;
  int totalmen;
  int totalwomen;
  int average;
}bathroom;

bathroom cb;
void Enter(int g, int id);
/* enter the bathroom, but wait until
   vacant if occupied by the opposite gender. Set
   state accordingly */
void Leave(int g,int id);
/* Leave the bathroom. Set the state
   to “vacant” if this thread is the last one out */

void initialize();
void finalize();

#define error_abort(code,text) do { \
  fprintf(stderr,"%s at \"%s\":%d: %s \n",    \
           text, __FILE__, __LINE__,strerror(code));    \
  abort(); \
  } while(0)
#endif
