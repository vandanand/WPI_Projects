
#include "Rational.h"
//The following are the constructor
//default constructor that sets value of Rational to 0
Rational::Rational() {
  // TODO Auto-generated constructor stub
  numerator=0;
  denominator=1;
}
//constructor when given the numerator nd the denominator
Rational::Rational(const int num, const int denom) {
  numerator=num;
  denominator=denom;
  if(denominator<0){
  		numerator=-1*numerator;
  		denominator=-1*denominator;
  	}else if(denominator==0){
  		throw "Can't have zero in denominator";
  	}
  simplify();
}
//whole number constructor
Rational::Rational(const int wholeNum) {
  numerator=wholeNum;
  denominator=1;
}
//copy constructor
Rational::Rational(const Rational &a){
  numerator=a.numerator;
  denominator=a.denominator;
  simplify();
}
//-------------------------------------------------------------------------
void Rational::setNum(int nnum){
  numerator=nnum;
}

void Rational::setDen(int nden){
 denominator=nden;
}

//These are helper functions
//set the rational number to any legitimate value
bool operator ==(const Rational& fraction, const Rational& fraction2){
  //call the normalize function, this will simplify the fractions
  /*
    int snum=fraction.getNum();
    int sden=fraction.getDen();
    bool equal= (numerator*sden)==(denominator*snum);
  */
  bool equal=(fraction.numerator*fraction2.denominator)==(fraction.denominator*fraction2.numerator);
  return equal;
}
bool operator >=(const Rational& fraction, const Rational& fraction2){
  bool equal=(fraction.numerator*fraction2.denominator)>=(fraction.denominator*fraction2.numerator);
  return equal;
}
bool operator <=(const Rational& fraction, const Rational& fraction2){
  bool equal=(fraction.numerator*fraction2.denominator)<=(fraction.denominator*fraction2.numerator);
  return equal;
}
bool operator !=(const Rational& fraction, const Rational& fraction2){
  bool equal=(fraction.numerator*fraction2.denominator)!=(fraction.denominator*fraction2.numerator);
  return equal;
}
bool operator <(const Rational& fraction, const Rational& fraction2){
  bool equal=(fraction.numerator*fraction2.denominator)< (fraction.denominator*fraction2.numerator);
  return equal;
}
bool operator >(const Rational& fraction, const Rational& fraction2){
  bool equal= (fraction.numerator*fraction2.denominator)>(fraction.denominator*fraction2.numerator);
  return equal;
}
//this is a stub gcd function, the objective is
//to reduce the fraction
//--------------------------------------------------------------------------
Rational operator +(const Rational& fraction, const Rational& fraction2){
	const int num  = fraction.numerator * fraction2.denominator + fraction.denominator * fraction2.numerator;;
	const int den =fraction.denominator * fraction2.denominator;;
	//Rational *result=new Rational(num,den);
	return Rational(num,den);
}
Rational operator -(const Rational &fraction, const Rational& fraction2){
	int num  = fraction.numerator * fraction2.denominator - fraction.denominator * fraction2.numerator;
	int den = fraction.denominator * fraction2.denominator;
	return Rational(num,den);
}

Rational operator *(const Rational &fraction, const Rational& fraction2){
	int num  = fraction.numerator * fraction2.numerator;
	int den = fraction.denominator * fraction2.denominator;
	return Rational(num,den);
}
Rational operator /(const Rational &fraction,const Rational& fraction2){
	int num  = fraction.numerator * fraction2.denominator;
	int den = fraction.denominator * fraction2.numerator;
	return Rational(num,den);
}

void Rational::simplify(){
	int j=numerator;
	int k=denominator;
	while(j!=k){
		if(j>k){
			j=j-k;
		}else{
			k=k-j;
		}
	}
	int newN=numerator/j;
	int newD= denominator/j;
	numerator=newN;
	denominator=newD;

}
double Rational::toDouble(){
	double todob= (double)(numerator)/(denominator);
	//return (double)(numerator)/denominator;
	return todob;
}
//default destructor
Rational::~Rational() {
  // TODO Auto-generated destructor stub
}

