HOW TO RUN THE PROGRAM:
In order to run the program, there are a few steps:
1. Go to the directory that the files are in the command shell.
2. Make sure that you have file.txt with the inputs you want the program to run. 
3. Type in make and that will compile the program. 
4. Run the specified program by doing the following: ./p4 < file.txt and replace file.txt with the text file you have.  

PROJECT 4 EXPLANATION:
Project 4 is where we built a memory manager that has the capability to provide the map, store, and load functions, and also a swapping mechanism when there are no more free pages. In Part 1, we created the 3 functions mentioned above. In map, we first created a helper to check if a page if free or not and assigned our process location and page fram number equal to it. We then had a helper function to help us calculate the VPN and offset based on the virtual address the user gave us. Then, we found the value of the protection bit to see if we can write to the page and formed our page table entry using the protection bit, process location, and a hex decimal 0x8 since we were given 64 bytes as the size and 16 bytes per page so 4 pages. After that we found the page table index, placed that in memory, and then updated our page frame number and at the end printed out the variables we kept track of. Next, for load and store we had the same concept where we kept track of the page fram number from the page table, calcuated the VPN and offset, found the page table index and stored that in memory, then had two functions, one to see if the valid bit is actually valid and one to see if the protected bit is there adn we print a corresponding error if they are not present (seg fault for not valid and cannot write to page for not protected). After that we find the physical frame number and find the resulting physical address and store that in memory. Then we print out the info we found. For swapping, the concept we used is basically to swap out pages to free up memory. First we pick a page to evict by using the round robin strategy, then write the evicted page to the disk, and then update the page table to record the swap file location for the evicted page, then use the newly freed page to go through with the user's command.  
 

HOW WE TESTED OUR PROGRAM:
We have a file.txt that has all of our inputs in it. We put in our arguments, separated by commas, line by line in the file. For example one of our text files has:

0,map,0,1
0,store,12,24
0,load,12,0

and our code will run through the arguments when we run ./p4 < file.txt in the command line for example. In our code, we have a variable that stores the input line the user wants and then calls fgets to stdin to read the file.  

 
