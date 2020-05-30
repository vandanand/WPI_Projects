package com.example.travel_itinerary;

import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ScrollView;
import android.net.Uri;

import com.example.travel_itinerary.command.SQLCommand;
import com.example.travel_itinerary.util.DBOperator;
import com.example.travel_itinerary.view.TableView;

public class Itinerary extends Activity implements View.OnClickListener {

    Button itin_backBtn, itin_makepayment;
    ScrollView itineraryView;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.itinerary);
//        //copy database file
//        try{
//            DBOperator.copyDB(getBaseContext());
//        }catch(Exception e){
//            e.printStackTrace();
//        }
        itin_backBtn=(Button)this.findViewById(R.id.ItineraryBack);
        itin_backBtn.setOnClickListener(this);

        itin_makepayment=(Button)this.findViewById(R.id.itin_makepay);
        itin_makepayment.setOnClickListener(this);

        itineraryView = (ScrollView)this.findViewById(R.id.ItineraryView);

        itineraryView.removeAllViews();

        Cursor cursor= DBOperator.getInstance().execQuery(SQLCommand.QUERY15);
        itineraryView.addView(new TableView(this.getBaseContext(),cursor));
    }

    public void onClick(View v)
    {
        int id=v.getId();

        if(id==R.id.itin_makepay){
            Uri uriUrl = Uri.parse("https://www.hilton.com/en/book/reservation/payment/");
            Intent launchBrowser = new Intent(Intent.ACTION_VIEW, uriUrl);
            startActivity(launchBrowser);
        }
        else if (id==R.id.ItineraryBack){
            //Go back to main screen
            Intent intent = new Intent(this, MainActivity.class);
            this.startActivity(intent);
        }
    }

}
