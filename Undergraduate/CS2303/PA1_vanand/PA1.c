/*
  ====================================================================
  Name: PA1.c
  Author: Vandana Anand
  Description: Print a 12 month calendar by inputting the year
  ====================================================================
*/

#include <stdio.h>
//function declarations
int printMonth(int, int, int);
void printCalendar(int, int);
int printMonthName(int, int);
int isLeapYear (int);
int startingDayOfYear (int);

//determines what day the given year starts on
int startingDayOfYear (int year) {

  int starting=6; //setting starting
  if(year>2000){ //years after 2000
    //Invariant: starting is the first day of the first month of the year year - 2000
    for(int i=0; i<year-2000;i++){
       if(isLeapYear(2000+i)==1){ //determing whether it's leap year
	starting= (starting+2)%7; //if leap year, add 2 then divide by 7 to get remainder
    }else{
        starting= (starting+1)%7; //if not leap year, add 1 then divide by 7 to get remainder 
    }
    //Invariant: starting is the first day of the first month of the year 2000 - year
  }}else if( year<2000){ //years before 2000
    for(int i=0; i<2000-year;i++){ 
    if(isLeapYear((2000+i)+1)==1){//determing whether it's leap year
      starting= (starting+5)%7; //is leap year, add 5 (basically like above when adding 2)
    }else{
       starting= (starting+6)%7; //if not leap year, add 6 (basically like above when adding 1)
    }
  }
  }

return starting ;
}


//displays the calendar
void printCalendar(int year, int startDayofMonth){

  
  printf("\nCalendar for year %i\n\n", year);

//Invariant: startDayofMonth is where the first day of the month starts

  for(int month=1; month<=12; month++) {

    startDayofMonth = printMonth( year,  month,  startDayofMonth);


    }
 
}

//implements the number of days in the month in the correct place
int printMonth(int year, int monthNum, int startDay) {
  int MonthDays;
  
    MonthDays = printMonthName(year, monthNum);
    printf(" Sun Mon Tue Wed Thu Fri Sat\n");
//Invariant: puts in spaces for the start day of the month if needed
    for(int i=0; i < startDay; i++) {
        printf("    ");
    }
//Invariant: finds the corresponding days of the month for each month using MonthDays
    for(int i=1; i<=MonthDays; i++){
	
      if(startDay==6){ //formatting the calendar
      printf("  %2d\n", i);
      }	else {
	  printf("  %2d",i);
      
    }	

    startDay = (startDay+1)%7; //determine startDay

    }
printf("\n\n");
return startDay;
}
//prints the month and given year
  int printMonthName(int year, int month) {

    switch(month) {

    case 1: printf(" January %d\n", year); //prints January and the year of the calendar and returns the number of days on January which is 31
      return 31;

    case 2: printf("February %d\n", year); 
      if(isLeapYear(year)==1)
	     return 29; //returns 29 if leap year
	   else
	     return 28; //returns 28 is not leap year
	   
    case 3: printf(" March %d\n", year);
    return 31;

    case 4: printf(" April %d\n", year);
     return 30;

    case 5: printf(" May %d\n", year);
     return 31;

    case 6: printf(" June %d\n", year);
     return 30;

    case 7: printf(" July %d\n", year);
      return 31;

    case 8: printf(" August %d\n", year);
     return 31;
  

    case 9: printf(" September %d\n", year);
     return 30;
    

    case 10: printf(" October %d\n", year);
     return 31;
    

    case 11: printf(" November %d\n", year);
     return 30;
     

    case 12: printf(" December %d\n", year);
     return 31;
    

     default: printf("There is no calendar"); 
	return -1;

    }
  

  }

//determines whether year is a leap year for the given year
 int isLeapYear (int year) {


if((year % 4 == 0 && year % 100 != 0) || year % 400 ==0) //conditions for determining a leap year
 return 1; //like saying return true
else
 return 0; //like saying return false


      }

  int main() {

    int year;

    printf("Enter the year of the calendar you would like to see:  ");
    scanf("%i", &year); //prompt for year for the calendar
    
//calling the functions
    int start = startingDayOfYear(year);
    printCalendar(year, start);
    
  

  }









	
