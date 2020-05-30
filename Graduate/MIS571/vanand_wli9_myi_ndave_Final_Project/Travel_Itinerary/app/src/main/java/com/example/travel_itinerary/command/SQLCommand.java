package com.example.travel_itinerary.command;

public abstract class SQLCommand


/**
 * SQL commands
 */

{
    // Display all customer information
    public static String QUERY1 =  "select * from customer";


    // List of Hotels
    public static String QUERY2 =  "SELECT H_name,H_desc,H_rating,H_price" +
    " FROM Hotel" +
    " JOIN Location_H, Arrival_Location" +
    " ON Location_H.LH_H_id=Hotel.H_id AND Arrival_Location.AL_id=Location_H.LH_AL_id" +
    " AND Arrival_Location.AL_city='Orlando' AND Arrival_Location.AL_state='FL'";


    // order by price
    public static String QUERY3 =  "SELECT H_name,H_desc,H_rating,H_price" +
    " FROM Hotel" +
    " JOIN Location_H, Arrival_Location" +
    " ON Location_H.LH_H_id=Hotel.H_id AND Arrival_Location.AL_id=Location_H.LH_AL_id" +
    " AND Arrival_Location.AL_city='Orlando' AND Arrival_Location.AL_state='FL'" +
    " ORDER BY H_price";

    // order by rating
    public static String QUERY4 =  "SELECT H_name,H_desc,H_rating,H_price" +
    " FROM Hotel" +
    " JOIN Location_H, Arrival_Location" +
    " ON Location_H.LH_H_id=Hotel.H_id AND Arrival_Location.AL_id=Location_H.LH_AL_id" +
    " AND Arrival_Location.AL_city='Orlando' AND Arrival_Location.AL_state='FL'" +
    " ORDER BY H_rating DESC";



    // List of Restaurants
    public static String QUERY5 = "SELECT Restaurant.R_name,Restaurant.R_price,Restaurant.R_rating,Restaurant.R_reservation,Restaurant.R_addr_line1"+
    " FROM Restaurant" +
    " JOIN Location_R, Arrival_Location" +
    " ON Location_R.LR_R_id=Restaurant.R_id AND Arrival_Location.AL_id=Location_R.LR_AL_id" +
    " AND Arrival_Location.AL_city='Orlando' AND Arrival_Location.AL_state='FL'";


    // order by price
    public static String QUERY6 =  "SELECT Restaurant.R_name,Restaurant.R_price,Restaurant.R_rating,Restaurant.R_reservation,Restaurant.R_addr_line1" +
    " FROM Restaurant" +
    " JOIN Location_R, Arrival_Location" +
    " ON Location_R.LR_R_id=Restaurant.R_id AND Arrival_Location.AL_id=Location_R.LR_AL_id" +
    " AND Arrival_Location.AL_city='Orlando' AND Arrival_Location.AL_state='FL'" +
    " ORDER BY R_price";


    // order by rating
    public static String QUERY7 =  "SELECT Restaurant.R_name,Restaurant.R_price,Restaurant.R_rating,Restaurant.R_reservation,Restaurant.R_addr_line1" +
    " FROM Restaurant" +
    " JOIN Location_R, Arrival_Location" +
    " ON Location_R.LR_R_id=Restaurant.R_id AND Arrival_Location.AL_id=Location_R.LR_AL_id"+
    " AND Arrival_Location.AL_city='Orlando' AND Arrival_Location.AL_state='FL'" +
    " ORDER BY R_rating DESC";



    // List of Attractions and corresponding cost of visit
    public static String QUERY8 =  "SELECT TA_name,TA_rating,TA_ticket_price,TA_desc,TA_addr_line1" +
    " FROM Tourist_Attraction" +
    " JOIN Location_TA, Arrival_Location" +
    " ON Location_TA.LTA_TA_id=Tourist_Attraction.TA_id AND Arrival_Location.AL_id=Location_TA.LTA_AL_id" +
    " AND Arrival_Location.AL_city='Orlando' AND Arrival_Location.AL_state='FL'";


    // order by price
    public static String QUERY9 =  "SELECT TA_name,TA_rating,TA_ticket_price,TA_desc,TA_addr_line1" +
    " FROM Tourist_Attraction" +
    " JOIN Location_TA, Arrival_Location" +
    " ON Location_TA.LTA_TA_id=Tourist_Attraction.TA_id AND Arrival_Location.AL_id=Location_TA.LTA_AL_id" +
    " AND Arrival_Location.AL_city='Orlando' AND Arrival_Location.AL_state='FL'" +
    " ORDER BY TA_ticket_price";

    // order by rating
    public static String QUERY10 =  "SELECT TA_name,TA_rating,TA_ticket_price,TA_desc,TA_addr_line1" +
    " FROM Tourist_Attraction" +
    " JOIN Location_TA, Arrival_Location" +
    " ON Location_TA.LTA_TA_id=Tourist_Attraction.TA_id AND Arrival_Location.AL_id=Location_TA.LTA_AL_id" +
    " AND Arrival_Location.AL_city='Orlando' AND Arrival_Location.AL_state='FL'" +
    " ORDER BY TA_rating DESC";


    // List of Transportation modes
    public static String QUERY11 =  "SELECT Transportation_Price.TP_transtype, (Transportation_Price.TP_price_per_mile*Distance.D_number_miles) as Price, Arrival_Location.AL_city, Depature_Location.DL_city" +
    " FROM Transportation_Price, Distance, Arrival_Location, Depature_Location" +
    " JOIN Travel_Itinerary" +
    " ON Arrival_Location.AL_id=Distance.D_AL_id and Depature_Location.DL_id=Distance.D_DL_id" +
    " AND Travel_Itinerary.TI_transtype=Transportation_Price.TP_transtype" +
    " AND Arrival_Location.AL_id='A002'" +
    " AND Depature_Location.DL_id='D001'" +
    " GROUP BY Transportation_Price.TP_transtype";

    // order by price
    public static String QUERY12 =  "SELECT Transportation_Price.TP_transtype, (Transportation_Price.TP_price_per_mile*Distance.D_number_miles) as Price, Arrival_Location.AL_city, Depature_Location.DL_city" +
    " FROM Transportation_Price, Distance, Arrival_Location, Depature_Location" +
    " JOIN Travel_Itinerary" +
    " ON Arrival_Location.AL_id=Distance.D_AL_id and Depature_Location.DL_id=Distance.D_DL_id" +
    " AND Travel_Itinerary.TI_transtype=Transportation_Price.TP_transtype" +
    " AND Arrival_Location.AL_id='A002'" +
    " AND Depature_Location.DL_id='D001'" +
    " GROUP BY Transportation_Price.TP_transtype" +
    " ORDER BY price";

    // List of Shopping places
    public static String QUERY13 =  "SELECT Shopping_Mall.S_name,Shopping_Mall.S_brands,Shopping_Mall.S_addr_line1" +
    " FROM Shopping_Mall" +
    " JOIN Location_S, Arrival_Location" +
    " ON Location_S.LS_S_id=Shopping_Mall.S_id AND Arrival_Location.AL_id=Location_S.LS_AL_id" +
    " AND Arrival_Location.AL_city='Orlando' AND Arrival_Location.AL_state='FL'";

    // order by brands
    public static String QUERY14 =  "SELECT Shopping_Mall.S_name,Shopping_Mall.S_brands,Shopping_Mall.S_addr_line1" +
    " FROM Shopping_Mall" +
    " JOIN Location_S, Arrival_Location" +
    " ON Location_S.LS_S_id=Shopping_Mall.S_id AND Arrival_Location.AL_id=Location_S.LS_AL_id" +
    " AND Arrival_Location.AL_city='Orlando' AND Arrival_Location.AL_state='FL'" +
    " ORDER BY S_brands";

    // Travel Itinerary
    public static String QUERY15 =  "SELECT Travel_Itinerary.TI_startdate, Travel_Itinerary.TI_enddate, Arrival_Location.AL_city,Depature_Location.DL_city,Travel_Itinerary.TI_transtype" +
    " FROM Travel_Itinerary, Arrival_Location, Depature_Location" +
    " WHERE Travel_Itinerary.TI_AL_id=Arrival_Location.AL_id" +
    " AND Travel_Itinerary.TI_DL_id=Depature_Location.DL_id" +
    " AND Travel_Itinerary.TI_id='000003'";



    /* select/delete/update/insert commands
    public static String RETURN_BOOK = "update checkout set coreturned=? where stid=? and lbcallnum=?";
    public static String CHECK_BOOK = "insert into checkout(stid,lbcallnum,coduedate,coreturned) values(?,?,?,?)"; */

}


