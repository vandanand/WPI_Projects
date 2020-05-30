package com.example.tutorial5_vandanaanand.command;

public abstract class SQLCommand


/**
 * SQL commands
 * Including select/delete/update/insert
 */

{
    //Query all students
    public static String QUERY_STUDENT = "select stid, stname from Student";
    //List all data in books table
    public static String QUERY_1 = "select lbcallnum, lbtitle from libbook";
    //List the call numbers of books with the title ‘Database Management’
    public static String QUERY_2 = "select lbcallnum from libbook where lbtitle like '%Database Management%'";
    //List the students and call numbers of books that have been checked out
    public static String QUERY_3 = "select Student.stname, Checkout.lbcallnum FROM Student, Checkout WHERE Student.stid = Checkout.stid Order By Student.stname";
    //List the students, book title, and book call numbers that have not been returned yet
    public static String QUERY_4 = "select Student.stname, LibBook.lbtitle, Checkout.lbcallnum FROM LibBook,Checkout, Student WHERE Student.stid = Checkout.stid AND Checkout.lbcallnum = LibBook.lbcallnum AND coreturned = 'N' Order By Student.stname";
    //List the book call numbers and count of the number of books that are due
    public static String QUERY_5 = "select lbcallnum, count(coduedate) FROM Checkout Group By lbcallnum";
    //List all the book call numbers and the sum of their cofines
    public static String QUERY_6 = "Select Student.stid, sum(Checkout.cofine) FROM Student, Checkout WHERE Student.stid = Checkout.stid Group by Student.stid Order By Student.stid";
    //List the students and their total fines if the total fines are more than $2.75
    public static String QUERY_7 = "select stname As 'student', sum(cofine) As 'TotalFine' From Student, Checkout WHERE Student.stid = Checkout.stid Group By stname Having sum(cofine) > 2.75";

}


