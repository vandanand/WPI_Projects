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

public class Shopping extends Activity implements View.OnClickListener {

    Button shop_backBtn , showall_shopbtn, price_shopbtn;
    ScrollView shopQuery;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.shopping);
        //copy database file
        try{
            DBOperator.copyDB(getBaseContext());
        }catch(Exception e){
            e.printStackTrace();
        }
        shop_backBtn=(Button)this.findViewById(R.id.ShoppingBack);
        shop_backBtn.setOnClickListener(this);

        showall_shopbtn=(Button)this.findViewById(R.id.AllShopping);
        showall_shopbtn.setOnClickListener(this);

        price_shopbtn=(Button)this.findViewById(R.id.ShopBrand);
        price_shopbtn.setOnClickListener(this);

        shopQuery = (ScrollView)this.findViewById(R.id.ShoppingView);
    }

    public void onClick(View v)
    {
        String sql="";
        int id=v.getId();
        if (id==R.id.AllShopping){

            shopQuery.removeAllViews();

            sql= SQLCommand.QUERY13;

            Cursor cursor=DBOperator.getInstance().execQuery(sql);
            shopQuery.addView(new TableView(this.getBaseContext(),cursor));

        }else if (id==R.id.ShopBrand){

            shopQuery.removeAllViews();

            sql= SQLCommand.QUERY14;

            Cursor cursor=DBOperator.getInstance().execQuery(sql);
            shopQuery.addView(new TableView(this.getBaseContext(),cursor));

        }
        else if (id==R.id.ShoppingBack){
            //Go back to main screen
            Intent intent = new Intent(this, MainActivity.class);
            this.startActivity(intent);
        }
    }

}
