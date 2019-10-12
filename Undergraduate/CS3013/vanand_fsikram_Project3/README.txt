***FILE NAMES***
bathroomSim.c
master.c
bathroomSim.h

***SUMMARY***
In this project, we simulated a bathroom in which only one gender is allowed inside at a time. We wrote a program that demonstrated that when a male goes inside a vacant bathroom, the female must wait outside, but more males can enter the bathroom since there's already a male inside. This is the same for when a female enters a vacant bathroom and the male must wait outside, but more females may enter.  

***HOW TO RUN THE PROGRAM***
1. Go to the directory with the project 3 files in the terminal
2. Type in make
3. Run the program by running ./bathroomSim 
	-> When you just run it like this with no arguments, the program will run with default arguments
	-> If you want to put in your own arguments, you must do this: ./bathroomSim 5 3 6 9
	   WHERE you can replace the numbers in which the first argument is the number of users, the second argument is the number of times the user repeats ths bathroom loop, the third argument is arrival intervals of time for the user, and lastly the fourth argument is the length of time the user stays in the bathroom 



ADDITIONAL DETAILS:

->FOR BATHROOM:

***SYNCHRONIZATION METHOD, INVARIANTS, STATES OF THE BATHROOM***
The method we used to protect the data and preserve the rules of the program is through locks and condition variables. One of the first things we do is initialize the variables to keep track of the bathroom in addition to the lock structure. We use pthread_mutex for locking the bathroom structure. We then have an Enter() function where the thread will enter the bathroom and acquire the lock, but wait until it is vacant if it is occupied by the opposite gender. Once it acquires the lock, it will set the state to occupied by whatever gender the thread is. Then, we use a condition variable to wait and signal to the other threads which is the invariant to determine that only one gender is in the bathroom. Another thing we do to make sure the above statement is true is the invariant of having separate counters to increment how many males and females are in the bathroom and that the counters must be zero. We check that this invariant is correct by having an assert function for the above statement. After the thread is finished it unlocks the lock it had previously acquired. Once a thread is done using the bathroom, the Leave() function is run. In the Leave() function, we decrement the thread that has just left the bathroom with separate male/female counters. We have an assert function that will guarantee the invariant that the count will never be below zero. This way, we know that our program definitely works. If the thread is the last one to leave (when the counts of male and female threads are both zero), it will set the state of the bathroom to vacant so now any gender thread can enter. Again, this invariant determines that only one gender will be in the bathroom at a time. If it is not the last one to leave, then only the gender that is currently in the bathroom will be allowed to enter. After it is set to vacant, we use a condition variable to broadcast the vacancy of the bathroom. Next, we finalize the statistics and print them out.   
 

->FOR MULITHREADED PROGRAM:

***QUEUE BEHAVIOR***
First, we know that both genders will not be in the queue at the same time because we used the synchronization method stated above through locks, condition variables, pthread join, and pthread create. We used assert multiple times throughout the program to make sure this invariant is true, also stated above. In this part, we will focus on the main and the individual function. In the main, the first thing we do is parse the arguments that the user enters. We randomize using the box muller representation of a normal distribution for the number of loops the user does. We also randomize the time. Then, we call pthread create to create the threads and we also call pthread join to wait for the threads to finish in the bathroom and also clean up after the thread. At the very end, we destroy any locks and condtion variables to ensure the user threads and the master thread are completed. Before this, we have an individual function which prints out all the necessary statistics for the program. We make sure that there is no conflict when printing out the statistics of each thread by putting it in the individual function with a for loop that ensures each thread has its own statistics.It also randomizes the arrival and stay variables, calls usleep for these variables, and calls Enter() and Leave(). For our invariant to determine mutual exclusion for the threads, we have an assert statement that makes sure that the separate counters for male and female threads are zero. Overall, this is how we make sure that our program works!



 
