SUMMARY:
My program is the Game of Life which displays a 
rectangular grid with cells containing life (marked
as o's) and without life (marked as x's). Each cell 
has a number of neighbors and can have up to 8. The game
will create generations of these grids and can go on 
until some termination conditions are met such as all 
organisms die, the pattern of organisms repeats, or 
the number of generations input by the user is 
reached. The rules about survival, death, and birth are 
that if an occupied cell has 2 or 3 occupied neighbors, 
it survives. If an unoccupied cell has exactly 3 occupied 
neighbors, it gives birth. If an occupied cell has 0,1,
4,5,6,7, or 8 occupied neighbors, it dies of loneliness
(0 or 1) or overcrowding(4,5,6,7,8). 

RUN THE PROGRAM
To run the program, it must be compiled and then the 
user will first put in the file name if they are using 
the command line. If they are using eclipse, they can 
go straight to the next command which is the size of the
array shown as X (rows) and Y(columns). Next, the user 
will put in the number of generations to play. They will
then select the file that has the pattern they want to 
start with. After that they can print and/or pause which 
is totally optional. 

PROBLEMS
There were many problems with this assignment. The amount
of time was too short because the assignment was vague.
It would have been much better if we had clear steps 
about what the assignment was telling us to do. I know myself
and many other friends/students were struggling to know
where to even start. The assignment was tough because 
there were lots of little details and big technical details
that had to be explained after hours of talking to the TA's
and Professors. I met with the TA's and professors for days 
before the assignment was due and I still am confused 
about the assignment. 

ALGORITHM
Reading the input file - This function basically reads the
input file and figures out where to put the x's and o's. 
It also makes sure the height/width of the array is correct.
Count neighbors- Function to look up, down, and in diagnols
of the cell. Also makes sure not to look for cells off
the board. Restriction is that cells are within the board.
Centering board-Makes sure that the input file is placed
approximately in the center of the board.

LOOP INVARIANT
Find number of neighbors by looking left/right (x - 
direction) and up/down (y direction) and also diagonally 
(x and y coordinates). 
Find the height (Y) and width(X) of the input file pattern
that was input. One for loop for each of width and height.


