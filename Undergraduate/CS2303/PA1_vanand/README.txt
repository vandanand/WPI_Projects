Vandana Anand's README document for PA1


My friend,Fareya Ikram, and I worked out the algorithm to figure out what day the year starts on. 

*Algorithm for finding the start day of the year - how it works*:

First, there are two functions. One function uses 2000 as an initial point and is suitable for years after 2000 that the user inputs. 

The second function uses 2000 as an intial point and is suitable for years before 2000 that the user inputs. 

Both functions use Sunday as 0 and Saturday as 6. So basically, the weekdays use the numbers like this: Sunday is 0, Monday is 1, Tuesday is 2, Wednesday is 3, Thursday is 4, Friday is 5, and Saturday is 6. I used this to find the pattern of what day the year starts on. When the year before is a leap year for years after 2000, the start day of that given year skips by 2. When the year before is not a leap year for years after 2000, the start day of that given year skips by 1. This is what the first function does. When the year after is a leap year for years before 2000, the given year's start day skips by 2. When the year after is a leap year for years before 2000, the given year's start day skips by 2. When the year after is not a leap year for years before 2000, the given year's start day skips by 1. This is what the second function does. Each function takes in the date and does the module by 7 to figure out the placement of the 1st day of the year. This is where the weekday representing each number comes in. For example, if remainder is 5, the first day of the year would be placed under Friday.          

*Loop invariants* <- these go in order of where the loop is found in the code

Invariant: starting is the first day of the first month of the year year - 2000

Invariant: starting is the first day of the first month of the year 2000 - year

Invariant: startDayofMonth is where the first day of the month starts

Invariant: puts in spaces for the start day of the month if needed

Invariant: finds the corresponding days of the month for each month using MonthDays

*Summary of Program*

The program prints out a 12 month calendar for an arbitrary year that the user inputs. It keeps track of the leap years and if it is, puts in an extra day in February. It also finds the starting day of the year and then finds the starting day for each subsequent month. 

*How to run the program*

You would run the program by getting into teh directory of where the file is, putting in gcc -Wall PA1.c to compile the program, and then put in ./a.out to actually run the program. Then you would input any year you want a calendar for and would get a 12 month calendar for that year.

*Problems I had*

The big problem I had was figuring out the logic of the day the year starts. After that, it was better putting all the pieces together. 









