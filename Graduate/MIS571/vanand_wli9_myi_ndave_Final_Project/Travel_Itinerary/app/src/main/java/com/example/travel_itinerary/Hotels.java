package com.example.travel_itinerary;

import com.example.travel_itinerary.command.SQLCommand;
import com.example.travel_itinerary.util.DBOperator;
import com.example.travel_itinerary.view.TableView;

import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ScrollView;

public class Hotels extends Activity implements View.OnClickListener {

    Button hotels_backBtn, showall_hotelsbtn, price_hotelsbtn, rank_hotelsbtn;
    ScrollView hotelsQuery;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.hotels);

        //copy database file
        try{
            DBOperator.copyDB(getBaseContext());
        }catch(Exception e){
            e.printStackTrace();
        }

        hotels_backBtn=(Button)this.findViewById(R.id.HotelBack);
        hotels_backBtn.setOnClickListener(this);

        showall_hotelsbtn=(Button)this.findViewById(R.id.AllHotel);
        showall_hotelsbtn.setOnClickListener(this);

        price_hotelsbtn=(Button)this.findViewById(R.id.HotelPrice);
        price_hotelsbtn.setOnClickListener(this);

        rank_hotelsbtn=(Button)this.findViewById(R.id.HotelRank);
        rank_hotelsbtn.setOnClickListener(this);

        hotelsQuery = (ScrollView)this.findViewById(R.id.hotelView);
    }

    public void onClick(View v)
    {
        String sql="";
        int id=v.getId();
        if (id==R.id.AllHotel){

            hotelsQuery.removeAllViews();

            sql= SQLCommand.QUERY2;

            Cursor cursor=DBOperator.getInstance().execQuery(sql);
            hotelsQuery.addView(new TableView(this.getBaseContext(),cursor));

        }else if (id==R.id.HotelPrice){

            hotelsQuery.removeAllViews();

            sql= SQLCommand.QUERY3;

            Cursor cursor=DBOperator.getInstance().execQuery(sql);
            hotelsQuery.addView(new TableView(this.getBaseContext(),cursor));

        }else if (id==R.id.HotelRank){

            hotelsQuery.removeAllViews();

            sql= SQLCommand.QUERY4;

            Cursor cursor=DBOperator.getInstance().execQuery(sql);
            hotelsQuery.addView(new TableView(this.getBaseContext(),cursor));
        }
        else if (id==R.id.HotelBack){
            //Go back to main screen
            Intent intent = new Intent(this, MainActivity.class);
            this.startActivity(intent);
        }
    }

}
