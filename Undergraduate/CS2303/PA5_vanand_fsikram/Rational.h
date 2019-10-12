/*
 * Rational.h
 *
 *  Created on: Feb 17, 2017
 *      Author: vanand
 */
#include <iostream>
#include <cstdlib>
#include <cmath>
using namespace std;

#ifndef RATIONAL_H_
#define RATIONAL_H_

class Rational {
private:
	int numerator;
	int denominator;


public:
	//These are the constructors
	Rational();
	Rational(const int num, const int denom);
	Rational(const int wholeNum);
	Rational(const Rational &a);
	//---------Setters & Getters----------------
	void setNum(int nnum);
	void setDen(int nden);
	/*int getNum();
	int getDen();*/
	//------------------------------------------
	/* these are functions, above are constructors
	int setValue(const int num, const int denom);
	void copy(const Rational &a);
	int numAndDen(const int wholeNumber);
	---------------------------------------------*/
	/*The following will be the constructors of the operator
	 * That need to be updated*/
	friend Rational operator +(const Rational &fraction1, const Rational &fraction2);
	friend Rational operator -(const Rational& fraction, const Rational &fraction2);
	friend Rational operator *(const Rational& fraction, const Rational &fraction2);
    friend Rational operator /(const Rational& fraction, const Rational &fraction2);
	//---------Basic operators above-------------------------
	friend bool operator ==(const Rational& fraction, const Rational &fraction2);
	friend bool operator >=(const Rational& fraction, const Rational &fraction2);
	friend bool operator <=(const Rational& fraction, const Rational &fraction2);
	friend bool operator !=(const Rational& fraction, const Rational &fraction2);
	friend bool operator <(const Rational& fraction, const Rational &fraction2);
	friend bool operator >(const Rational& fraction, const Rational &fraction2);
	//-------------------------------------------------------
	//I havent looked at theses ones  below
    friend ostream &operator<<( ostream &output,
         const Rational &D ) {
         output << D.numerator << "/" << D.denominator;
         return output;
      }

      friend istream &operator>>( istream  &input, Rational &D ) {
         input >> D.numerator >> D.denominator;
         return input;
      }
	//-------------------------------------------------------
	//double operator double(const Rational& fraction)const;
	//only 70 percent sure about the thing above
	double toDouble();
	void simplify();
	virtual ~Rational();
};


#endif /* RATIONAL_H_ */
