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
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.Toast;
import android.widget.Spinner;

public class Transportation extends Activity implements View.OnClickListener {

    Button transport_backBtn, showall_transportbtn, price_transportbtn;
    ScrollView transportQuery;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.transportation);
        //copy database file
        try{
            DBOperator.copyDB(getBaseContext());
        }catch(Exception e){
            e.printStackTrace();
        }
        transport_backBtn=(Button)this.findViewById(R.id.TransBack);
        transport_backBtn.setOnClickListener(this);

        showall_transportbtn=(Button)this.findViewById(R.id.AllTrans);
        showall_transportbtn.setOnClickListener(this);

        price_transportbtn=(Button)this.findViewById(R.id.TransPrice);
        price_transportbtn.setOnClickListener(this);

        transportQuery = (ScrollView)this.findViewById(R.id.TransView);
    }

    public void onClick(View v)
    {
        String sql="";
        int id=v.getId();


        if (id==R.id.AllTrans){

            transportQuery.removeAllViews();

            sql= SQLCommand.QUERY11;

            Cursor cursor=DBOperator.getInstance().execQuery(sql);
            transportQuery.addView(new TableView(this.getBaseContext(),cursor));

        }else if (id==R.id.TransPrice){

            transportQuery.removeAllViews();

            sql= SQLCommand.QUERY12;

            Cursor cursor=DBOperator.getInstance().execQuery(sql);
            transportQuery.addView(new TableView(this.getBaseContext(),cursor));

        }
        else if (id==R.id.TransBack){
            //Go back to main screen
            Intent intent = new Intent(this, MainActivity.class);
            this.startActivity(intent);
        }
    }

}
