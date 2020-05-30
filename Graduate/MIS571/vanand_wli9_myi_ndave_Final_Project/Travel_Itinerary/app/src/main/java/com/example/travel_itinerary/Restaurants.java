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

public class Restaurants extends Activity implements View.OnClickListener {

    Button rest_backBtn, showall_restbtn, price_restbtn, rank_restbtn;
    ScrollView restQuery;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.restaurants);
        //copy database file
        try{
            DBOperator.copyDB(getBaseContext());
        }catch(Exception e){
            e.printStackTrace();
        }
        rest_backBtn=(Button)this.findViewById(R.id.RestBack);
        rest_backBtn.setOnClickListener(this);

        showall_restbtn=(Button)this.findViewById(R.id.AllRest);
        showall_restbtn.setOnClickListener(this);

        price_restbtn=(Button)this.findViewById(R.id.RestPrice);
        price_restbtn.setOnClickListener(this);

        rank_restbtn=(Button)this.findViewById(R.id.RestRank);
        rank_restbtn.setOnClickListener(this);

        restQuery = (ScrollView)this.findViewById(R.id.RestView);
    }

    public void onClick(View v)
    {
        String sql="";
        int id=v.getId();

        if (id==R.id.AllRest){

            restQuery.removeAllViews();

            sql= SQLCommand.QUERY5;

            Cursor cursor=DBOperator.getInstance().execQuery(sql);
            restQuery.addView(new TableView(this.getBaseContext(),cursor));

        }else if (id==R.id.RestPrice){

            restQuery.removeAllViews();

            sql= SQLCommand.QUERY6;

            Cursor cursor=DBOperator.getInstance().execQuery(sql);
            restQuery.addView(new TableView(this.getBaseContext(),cursor));

        }else if (id==R.id.RestRank){

            restQuery.removeAllViews();

            sql= SQLCommand.QUERY7;

            Cursor cursor=DBOperator.getInstance().execQuery(sql);
            restQuery.addView(new TableView(this.getBaseContext(),cursor));
        }
        else if (id==R.id.RestBack){
            //Go back to main screen
            Intent intent = new Intent(this, MainActivity.class);
            this.startActivity(intent);
        }
    }

}
