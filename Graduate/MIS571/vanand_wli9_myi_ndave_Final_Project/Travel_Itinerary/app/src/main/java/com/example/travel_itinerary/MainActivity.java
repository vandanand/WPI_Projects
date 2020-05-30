package com.example.travel_itinerary;

import android.view.View.OnClickListener;

import com.example.travel_itinerary.util.DBOperator;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.view.View;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Button;



public class MainActivity extends Activity implements View.OnClickListener {

    Button transportBtn, hotelsBtn, restaurantsBtn, attractionsBtn, shoppingBtn, itineraryBtn;

    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.customer);

        transportBtn=(Button)this.findViewById(R.id.transportation);
        transportBtn.setOnClickListener(this);

        hotelsBtn=(Button)this.findViewById(R.id.hotels);
        hotelsBtn.setOnClickListener(this);

        restaurantsBtn=(Button)this.findViewById(R.id.restaurants);
        restaurantsBtn.setOnClickListener(this);

        attractionsBtn=(Button)this.findViewById(R.id.attractions);
        attractionsBtn.setOnClickListener(this);

        shoppingBtn=(Button)this.findViewById(R.id.shopping);
        shoppingBtn.setOnClickListener(this);

        itineraryBtn=(Button)this.findViewById(R.id.itinerary);
        itineraryBtn.setOnClickListener(this);


        //copy database file
        try{
            DBOperator.copyDB(getBaseContext());
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public void onClick(View v) {
        int id = v.getId();
        if (id == R.id.transportation) {
            Intent intent = new Intent(this, Transportation.class);
            this.startActivity(intent);
        } else if (id == R.id.hotels) {
            Intent intent = new Intent(this, Hotels.class);
            this.startActivity(intent);
        } else if (id == R.id.restaurants) {
            Intent intent = new Intent(this, Restaurants.class);
            this.startActivity(intent);
        }else if (id == R.id.attractions) {
            Intent intent = new Intent(this, Attractions.class);
            this.startActivity(intent);
        }else if (id == R.id.shopping) {
            Intent intent = new Intent(this, Shopping.class);
            this.startActivity(intent);
        }else if (id == R.id.itinerary) {
            Intent intent = new Intent(this, Itinerary.class);
            this.startActivity(intent);
        }
    }
}
