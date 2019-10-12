/*
 * PA5.cpp
 *
 *  Created on: Feb 17, 2017
 */
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <iostream>   // for cout, endl
#include <cstdlib>
#include <stdio.h>
#include <fstream>
#include <sstream>
#include <string.h>
void help();
#include "PA5.h"
#include "Rational.h"
using namespace std;
int main(int argc, const char* argv[]){
  if(argc<2){
    help();
    exit(1);
  }
  for(int i=1;i<argc;i++){
    //Open each input file one by one
    std::ifstream infile(argv[i]);
    string line;

    if (!infile.is_open())
      cerr<<"error while opening file"<<endl;
    //Line by line

    while(getline(infile,line)){
      //operand1 operand2 operator1 operand3 operator2
      Rational Operand1, Operand2,Result;
      bool bResult=false;
      bool isBool=false;
      int item_count = 1;
      cout << line << " : ";
      stringstream ss(line );
      string ops;//first and 2nd operand
      while(ss >> ops) { //fetch word by word from the line.
        //Check if it is an operator
        if(( ops == "+")||(ops == "*") ||(ops == "-")||(ops == "/")
           ||(ops == ">")||(ops == "<")||(ops == "<=")||(ops == ">=")
           ||(ops == "==")||(ops == "!=")) {
          //cout << "Need to process " <<ops<<endl;

        	if (item_count > 3){
        	              //Need to copy result from last operation to operand1 because operand2 is holding latest operand
        	              Operand1 = Result;
        	              std::cout << Operand1 << " " <<Operand2 << " " <<ops << "     : " << Result << " double()" <<std::endl;

        	            }

        if(ops == "+"){
        	Result = Operand1+Operand2;
        	//cout << " " << num << "/ " << den;
        }
        else if(ops == "-"){
        	Result=Operand1-Operand2;
        }
        else if(ops == "*"){
        	Result=Operand1*Operand2;
        }
        else if(ops == "/"){
        	Result=Operand1/Operand2;
        }
        else if(ops == ">"){
        	//bresul
        	isBool=true;
        	bResult= Operand1>Operand2;
        }
        else if(ops == ">="){
        	isBool=true;
        	bResult= Operand1>=Operand2;
         }
        else if(ops == "<"){
        	isBool=true;
        	bResult= Operand1<Operand2;
        }
        else if(ops == "<="){
        	isBool=true;
        	bResult= Operand1<=Operand2;
        }
        else if(ops == "=="){
        	isBool=true;
        	bResult= Operand1==Operand2;
        	bool operator ==(const Rational& fraction, const Rational& fraction2);
        }
        else if(ops == "!="){
        	isBool=true;
        	bResult= Operand1!=Operand2;
        }

          continue;
        }

        //Now split first operans by "/" to get numerator and denominators.
        //All  operators will have two operands, means three items.
        char * dup = strdup(ops.c_str());
        char * op1  = strtok (dup,"/");

        if(isspace(op1[0]))
          continue;

        int num = atoi(op1); //Numerator
        char *op2  = strtok (NULL,"/");

        //May not have a denominator. It will be by default 1.
        int den;
        if(op2 == NULL) {
          den = 1;
        }else {
          den= atoi(op2);
        }

        if(item_count == 1){
          // cout <<"First operand "<< ops << endl;
           //Create a rational here.
           Operand1.setNum(num);
           Operand1.setDen(den);
           item_count++;
           continue;
        }

        if(item_count > 1){
           //cout <<"Second operand "<< ops << endl;
           //Create a rational here.
           Operand2.setNum(num);
           Operand2.setDen(den);
           item_count++;
           continue;
        }


      }
//Here we print the result and do double and endl
      if(isBool){
    	  if(bResult){
        	  std::cout << "true" <<std::endl;
        	  bResult=false;
    	  }else{
        	  std::cout << "false" <<std::endl;
    	  }
      }else{
    	  std::cout << Result << " double(" <<Result.toDouble()<<")"<<std::endl;
      }

    }
    infile.close();
  }
return 0;
}

void help(){
  std::cout<<"We are looking for..."<<endl;
}

