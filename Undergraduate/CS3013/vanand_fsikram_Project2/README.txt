HOW TO RUN THE PROGRAM:
In order to run the program, there are a few steps:
1. Go to file directory using cd
2. Run "make"
3. Run "sudo insmod virusscanner.ko" and enter your password (if file exists, run "sudo rmmod virusscanner" and then insmod to get the latest file version) 
4. Run "gcc -o testcalls testcalls.c
5. Run "./testcalls" or "./test" in the part2 folder
6. Finally run "sudo tail -200 /var/log/syslog to view first 200 lines of this file containing user acitvity

PROJECT2 EXPLANATION:
In Part 1, we are first intercepting the first system call with a print statement. Then we are building a virus scanner that will take in a text file and scan it to see if the word "VIRUS" comes up and subsequently returns that the user is reading a file with a virus in it. We created the functions open, read, and close so that we can see when the user opens the file, reads the file which would then return if there's a virus in the file, and then closes the file, respectively in the var/log/syslog file. In Part 2, we implement a program to learn more about a targeted process's ancestors, siblings, and children. Our function takes in the PID and goes through all the processes until the targeted PID is found. Then it gos through the children and siblings and records their PIDs. Then it startes looking through the process ancestry tree until it finds a parentless node. 

HOW WE TESTED OUR PROGRAM:
We have a test.c or testcalls.c file in our subdirectories called Part1 and Part2. This is the user land code containing our tests that is to be run by the user. The process is detailed under "HOW TO RUN THE PROGRAM"

 
