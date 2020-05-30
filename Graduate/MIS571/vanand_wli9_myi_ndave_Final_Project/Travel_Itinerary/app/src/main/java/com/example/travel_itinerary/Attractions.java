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

public class Attractions extends Activity implements View.OnClickListener {

    Button attract_backBtn, showall_attractbtn, price_attractbtn, rank_attractbtn;
    ScrollView attractQuery;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.attractions);
        //copy database file
        try{
            DBOperator.copyDB(getBaseContext());
        }catch(Exception e){
            e.printStackTrace();
        }
        attract_backBtn=(Button)this.findViewById(R.id.AttractBack);
        attract_backBtn.setOnClickListener(this);

        showall_attractbtn=(Button)this.findViewById(R.id.AllAttraction);
        showall_attractbtn.setOnClickListener(this);

        price_attractbtn=(Button)this.findViewById(R.id.AttractPrice);
        price_attractbtn.setOnClickListener(this);

        rank_attractbtn=(Button)this.findViewById(R.id.AttractRank);
        rank_attractbtn.setOnClickListener(this);

        attractQuery = (ScrollView)this.findViewById(R.id.AttractView);
    }

    public void onClick(View v)
    {
        String sql="";
        int id=v.getId();
        if (id==R.id.AllAttraction){

            attractQuery.removeAllViews();

            sql= SQLCommand.QUERY8;

            Cursor cursor=DBOperator.getInstance().execQuery(sql);
            attractQuery.addView(new TableView(this.getBaseContext(),cursor));

        }else if (id==R.id.AttractPrice){

            attractQuery.removeAllViews();

            sql= SQLCommand.QUERY9;

            Cursor cursor=DBOperator.getInstance().execQuery(sql);
            attractQuery.addView(new TableView(this.getBaseContext(),cursor));

        }else if (id==R.id.AttractRank){

            attractQuery.removeAllViews();

            sql= SQLCommand.QUERY10;

            Cursor cursor=DBOperator.getInstance().execQuery(sql);
            attractQuery.addView(new TableView(this.getBaseContext(),cursor));
        }
        else if (id==R.id.AttractBack){
            //Go back to main screen
            Intent intent = new Intent(this, MainActivity.class);
            this.startActivity(intent);
        }
    }

}
