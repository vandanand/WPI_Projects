package com.example.tutorial6_vandanaanand;

import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.Toast;

import com.example.tutorial6_vandanaanand.command.SQLCommand;
import com.example.tutorial6_vandanaanand.util.DBOperator;
import com.example.tutorial6_vandanaanand.view.TableView;

public class QueryActivity extends Activity implements OnClickListener {

    Button backBtn,resultBtn;
    Spinner querySpinner;
    ScrollView scrollView;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.query_main);
        //copy database file
        try{
            DBOperator.copyDB(getBaseContext());
        }catch(Exception e){
            e.printStackTrace();
        }
        backBtn=(Button)this.findViewById(R.id.goback_btn);
        backBtn.setOnClickListener(this);
        resultBtn=(Button)this.findViewById(R.id.showresult_btn);
        resultBtn.setOnClickListener(this);
        querySpinner=(Spinner)this.findViewById(R.id.querylist_spinner);
        scrollView=(ScrollView)this.findViewById(R.id.scrollview_queryresults);
    }

    public void onClick(View v)
    {
        String sql="";
        int id=v.getId();
        if (id==R.id.showresult_btn){
            //show query result
            int pos=querySpinner.getSelectedItemPosition();
            if (pos==Spinner.INVALID_POSITION){
                //User doesn't choose any query, show warning
                Toast.makeText(this.getBaseContext(), "Please choose a query!", Toast.LENGTH_SHORT).show();
                return;
            }
            scrollView.removeAllViews();
            if (pos==0){
                //show all books
                sql=SQLCommand.QUERY_1;
            }else if (pos==1){
                //list the call numbers of books with the title ‘Database Management’
                sql=SQLCommand.QUERY_2;
            }else if (pos==2){
                sql=SQLCommand.QUERY_3;
            }else if (pos==3){
                sql=SQLCommand.QUERY_4;
            }else if (pos==4){
                sql=SQLCommand.QUERY_5;
            }else if (pos==5){
                sql=SQLCommand.QUERY_6;
            }else if (pos==6){
                sql=SQLCommand.QUERY_7;
            }
            Cursor cursor=DBOperator.getInstance().execQuery(sql);
            scrollView.addView(new TableView(this.getBaseContext(),cursor));
        }else if (id==R.id.goback_btn){
            //go back to main screen
            Intent intent = new Intent(this, MainActivity.class);
            this.startActivity(intent);
        }
    }
}

