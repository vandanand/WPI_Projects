/* 
 * CS:APP Data Lab 
 * 
 * Name: Vandana Anand, User iD: vanand
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* Copyright (C) 1991-2016 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 8.0.0.  Version 8.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2014, plus Amendment 1 (published
   2015-05-15).  */
/* We do not support C11 <threads.h>.  */
/* 
 * oddBits - return word with all odd-numbered bits set to 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 2
 */
int oddBits(void) {

int word;
word = ((0XAA << 8) | (0XAA <<16) | (0XAA << 24) | (0XAA));
//shifts over by even number and ORs each one to determine the odd bits and sets them to 1
  return word;
}
/*
 * isTmin - returns 1 if x is the minimum, two's complement number,
 *     and 0 otherwise 
 *   Legal ops: ! ~ & ^ | +
 *   Max ops: 10
 *   Rating: 1
 */
int isTmin(int x) {
int twoscomplement = (~x+1); //determines the twos complement 

 return !((x^twoscomplement) + !x); //returns 1 if determined whether x is the minimum, twos complement number, or another case in which it returns 0

}
/* 
 * bitXor - x^y using only ~ and & 
 *   Example: bitXor(4, 5) = 1
 *   Legal ops: ~ &
 *   Max ops: 14
 *   Rating: 1
 */
int bitXor(int x, int y) {
//uses demorgan's law 
  return (~(~x & ~y) & ~(x&y));
}
/* 
 * conditional - same as x ? y : z 
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int conditional(int x, int y, int z) {

int a = (~(!!x)+1); //find out if x not equal to 0, negate that, and then add 1

return ((a & y) | (~a & z)); //a and y is one case while negation of a and z is another case. Can only be one or the other case so or operator

}
/* 
 * greatestBitPos - return a mask that marks the position of the
 *               most significant 1 bit. If x == 0, return 0
 *   Example: greatestBitPos(96) = 0x40
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 70
 *   Rating: 4 
 */
int greatestBitPos(int x) {
//initilaize the variables
int mask;
int value = (0X80 << 24);

mask=x;//declare mask as x 
//keep shifting over by a number of values (multiples of 2 up to 16)
mask =mask | mask >>1;
mask =mask | mask >>2;
mask =mask | mask >>4;
mask =mask | mask >>8;
mask =mask | mask >>16;
mask =mask & ((~mask >>1)^value); //obtain the final mask value

return mask; //returns the mask
}
/* 
 * divpwr2 - Compute x/(2^n), for 0 <= n <= 30
 *  Round toward zero
 *   Examples: divpwr2(15,1) = 7, divpwr2(-33,4) = -2
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int divpwr2(int x, int n) {
    return ((x+((x>>31)&((1<<n)+(~0)))) >> n); //used the equation provided in the C book to calculate x/(2^n) and return that answer
}
/* 
 * isNonNegative - return 1 if x >= 0, return 0 otherwise 
 *   Example: isNonNegative(-1) = 0.  isNonNegative(0) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 3
 */
int isNonNegative(int x) {

  return !(x>>31); //shifts x by 31 to find the sign and then does ! to return the answer 1 if x>= 0 and 0 if x<0
}
/*
 * satMul2 - multiplies by 2, saturating to Tmin or Tmax if overflow
 *   Examples: satMul2(0x30000000) = 0x60000000
 *             satMul2(0x40000000) = 0x7FFFFFFF (saturate to TMax)
 *             satMul2(0x60000000) = 0x80000000 (saturate to TMin)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int satMul2(int x) {

int findsign = x >>31; //determines the sign of x, the given variable
int doublex = x+x; //doubles x
int value = (x ^ doublex) >>31; //finds the sign of x XOR double x
int value2 = value & (findsign ^ ~(1<<31)); //determines whether x and doublex have the same sign
return (value2) | (~value & doublex); //determines what to do in each case and returns the answer
 
}
/* 
 * isLess - if x < y  then return 1, else return 0 
 *   Example: isLess(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLess(int x, int y) {
/*negates the equal(x^y) which makes it not equal (determines if x and y are equal and not equal, in which case x could be less) and then ands with the complement of y added to x. It has to be either this previous part or this next part. The next part ands x and the negation of y. It then shifts by 31 to the right to get the final bit then ands by 1 to get the final answer */
return (((~(x ^ y)) & (x + (~y +1))) | (x & (~y))) >>31 &1;

}
/* 
 * isAsciiDigit - return 1 if 0x30 <= x <= 0x39 (ASCII codes for characters '0' to '9')
 *   Example: isAsciiDigit(0x35) = 1.
 *            isAsciiDigit(0x3a) = 0.
 *            isAsciiDigit(0x05) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 3
 */
int isAsciiDigit(int x) {
  int lowerboundnumber = ~0X30; //negate lower bound number given in problem
int upperboundnumber = 0X3A;//upper bound number given in problem
int lowerbound =  1+ x + lowerboundnumber; //determine the lower bound
int upperbound = ~x + upperboundnumber; //dtermine the upper bound

return (!((lowerbound | upperbound)>>31)); //has to be either lower bound or upper bound, then use ! and shift over 31 to get the final answer


}
/*
 * trueThreeFourths - multiplies by 3/4 rounding toward 0,
 *   avoiding errors due to overflow
 *   Examples: trueThreeFourths(11) = 8
 *             trueThreeFourths(-9) = -6
 *             trueThreeFourths(1073741824) = 805306368 (no overflow)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int trueThreeFourths(int x)
{
//the first 3 lines deal with the negatives 
  int negsign = ((x >>31)&1); //get the negative 
int allbits = (~negsign) +1; //negate the negative to make it positive
int total = (x^allbits) + negsign; //get the final positive bit 

int d = ~(3 <<30);
int divide = d&(total >> 2); //multiply the total and use d to divide 

int addquotients = divide +divide +divide; //add the quotients together 

int lostbits = total &3; //factor in the lost bits 
int addlostbits = lostbits+lostbits+lostbits; //add the lost bits together

int multlostbits = d&(addlostbits >> 2); //multiply the lost bits and use c to divide

int final = addquotients + multlostbits; //the divided bits and the lost bits

return (final^allbits) + negsign; //add the negative if needed to the final answer 

}
/*
 * ilog2 - return floor(log base 2 of x), where x > 0
 *   Example: ilog2(16) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 90
 *   Rating: 4
 */
int ilog2(int x) {
  int x1, x2, x3;
//shift each time by even number (multiples of 2 up to 16) -> similar approach to greatestBitPos
x=x| (x>>1);
x=x| (x>>2);
x=x| (x>>4);
x=x| (x>>8);
x=x| (x>>16);

//below are the different conditions, 0X55, 0X33, and 0X0F
//have to either shift left by 8 OR shift over by 8 and then 16
x1 =(0X55 | (0X55 <<8)) | ((0X55 | (0X55 <<8)) <<16);

x2 = (0X33 | (0X33 << 8)) | ((0X33 | (0X33 << 8)) <<16);

x3 = (0X0F | (0X0F << 8)) | ((0X0F | (0X0F << 8)) <<16);

//anding the above result by x shifted over by multiples of 2 up to 4
//then adding that to anding x to each of the results above 
x = ((x>>1) &x1)+(x&x1);
x = (x&x2) + ((x>>2) &x2);
x = ((x>>4) &x3)+(x&x3);

x = (x&(0XFF | (0XFF << 16))) + ((x>>8) &(0XFF | (0XFF << 16)));
x = (x&(0XFF | (0XFF <<8))) + ((x>>16) &(0XFF | (0XFF <<8)));

return x + ~0; //return the final result
}
/* 
 * float_neg - Return bit-level equivalent of expression -f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned float_neg(unsigned uf) {
//initialize the variables 
 int isExpNaN = (uf >> 23) & 0XFF;
 int mantissa = uf & 0X7FFFFF;

if((isExpNaN == 0XFF) && (mantissa != 0)){ //base case
return uf; //just return the variable 
}

else { 
return uf ^ 0X80000000; //use bit operation XOR 
}
 
}
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
//initilize the variables
int sign=0;
int isExpNaN =31; //exponent set to 31 because of 32 bit system
int mantissa =0; 
int set=0;
//the following is a series of cases that could result in this problem
if(x==0){ //first case, x = 0
 return 0;
}
if(x& 0X80000000) { //second case 
sign= 0X80000000; //set sign
x=-x; //make x negative 
}
while (1){ //if the case above 
if(x&0X80000000) 
break; //to avoid going on infinitely 
isExpNaN = isExpNaN-1; //subtract exponent by 1
x<<=1;//shift to the left 
}
if(((x&0X000001FF) == 0X180) | ((x& 0XFF) > 0X80)) {//third case, make it 1
set =1;
}
mantissa = ((x& 0X7FFFFFFF) >>8)+set; // final mantissa value
return sign + ((isExpNaN+127) <<23) + mantissa; //final, add variables together
}
/* 
 * float_twice - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_twice(unsigned uf) {
//setting the variables
  int mantissa = uf & 0X7FFFFF;
  int sign = uf & 0X80000000;
  int isExpNaN = (uf >> 23) & 0XFF;

//this part tests the whole range of values 
if((isExpNaN ==0 && mantissa == 0) || (isExpNaN == 255)){ // 0 or NaN
	return uf; //just return the given variable 
}

if(isExpNaN) { //normalized 
isExpNaN =isExpNaN+1; //increment exponent
}else if (mantissa == 0X7FFFFF) { //edge case
isExpNaN=isExpNaN+1; //increment exponent
mantissa=mantissa-1; // and decrement the mantissa
}
else{  //denormalized
mantissa <<=1; //shift mantissa to the left
}

return ((mantissa)|(sign)|(isExpNaN <<23)); //putting it together
}

/* One that will helpwith other puzzles but not actually a puzzle in here

isEqual(x,y): x==y?
if equal reutrn 1 and not equal return 0
Legal operators: & | ^ + << >> ! ~

return !(x ^ y);

0 means false
1 means true 


*/
