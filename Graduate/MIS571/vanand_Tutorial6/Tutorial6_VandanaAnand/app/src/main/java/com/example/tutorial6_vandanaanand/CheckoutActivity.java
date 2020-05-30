package com.example.tutorial6_vandanaanand;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import com.example.tutorial6_vandanaanand.command.SQLCommand;
import com.example.tutorial6_vandanaanand.util.DBOperator;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.Toast;

public class CheckoutActivity extends Activity implements OnClickListener {

    Button checkout_back_btn;
    EditText stuIdEdit, bookIdEdit;
    DatePicker datePicker;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.checkout_vandanaanand);
        stuIdEdit=(EditText)this.findViewById(R.id.studentID_edittext);
        bookIdEdit=(EditText)this.findViewById(R.id.bookID_edittext);
        datePicker=(DatePicker)this.findViewById(R.id.datePicker1);

        checkout_back_btn=(Button)this.findViewById(R.id.goback_btn);
        checkout_back_btn.setOnClickListener(this);
    }

    public void onClick(View v)
    {
        int id=v.getId();
        if (id==R.id.checkout_btn){
            //Check out a book
            DBOperator.getInstance().execSQL(SQLCommand.CHECK_BOOK, this.getArgs(true));
            Toast.makeText(getBaseContext(), "Checkout successfully", Toast.LENGTH_SHORT).show();
        }else if (id==R.id.return_btn){
            //Return a book
            DBOperator.getInstance().execSQL(SQLCommand.RETURN_BOOK, this.getArgs(false));
            Toast.makeText(getBaseContext(), "Return successfully", Toast.LENGTH_SHORT).show();
        }else if (id==R.id.goback_btn){
            //Go back to main screen
            Intent intent = new Intent(this, MainActivity.class);
            this.startActivity(intent);
        }
    }
    /**
     * Get input data
     * including studentID, book callnum, date and returned state
     * @param isCheckout
     * @return
     */
    private String[] getArgs(boolean isCheckout){
        String args[]=new String[4];
        //stid
        args[0] = stuIdEdit.getText().toString();
        //callnum
        args[1] = bookIdEdit.getText().toString();
        //date
        int year=datePicker.getYear();
        int month=datePicker.getMonth();
        int day=datePicker.getDayOfMonth();
        Calendar calendar = Calendar.getInstance();
        calendar.set(year, month, day);
        //format the date
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        args[2] = dateFormat.format(calendar.getTime());
        if (isCheckout) args[3]="N";
        else args[3]="Y";
        return args;
    }


}

