function Q = nevilles_mod(xpts,ypts,xeval)

% Vandana Anand
% MA 3457 / CS 4033 
%Homework 2 Problem 3

%
% Function using Neville's method to generate Lagrange interpolating 
% polynomials at xeval that recursively pass through the points (xpts,ypts)
%
% Input: xpts  = x points
%        ypts  = y points = f(xpts)
%        xeval = evaluate polynomial at these x values
%
% Output: Q = recursive table with columns giving Q_{i,j} approximating polynomials

% *Matrix indexing goes row first then column Q(row, column)*

N = length(xpts); %length of vector containing x points
Q = zeros(N,N); %create square matrix (NxN) of all zeroes 
Q(:,1) = ypts;  %look through all the rows and first column in the matrix Q and set this equal to ypts

% Recursively generate Lagrange interpolating polynomials
for i = 1:N-1 %set i to index row 1 and end at row N-1
    for j = 1:i % set j to index first column and end at column (i) which will form a table with numbers in the lower triangle and zeroes in the upper triangle of the table
        Q(i+1,j+1) = ((xeval-xpts(i-j+1))*Q(i+1,j)-(xeval-xpts(i+1))*Q(i,j))...
            /(xpts(i+1)-xpts(i-j+1)); %this is the formula to evaluate Neville's method
        
        %This part (to make sure the successive polynomials Q(i,i) and
        %Q(i-1, i-1) differ in absolute value by less than 10^-3) 
        %took 5 lines of code to modify the nevilles_mod file 
        if i>1 %must make sure i is greater than 1 or else will get an invalid value 
            if(abs(Q(i,i)-Q(i-1,i-1))<0.001) %setting an if condition to see if the  successive polynomials Q(i,i) and
        %Q(i-1, i-1) differ in absolute value by less than 10^-3 (0.001).
                break %if the above condition if true, then stop running the program
            end %end the if statement
        end    
     end %end the for loop for j 
end %end the for loop for i
end %end the function



