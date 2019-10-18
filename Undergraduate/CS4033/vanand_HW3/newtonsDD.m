function NDD = newtonsDD(X, Y)

% Vandana Anand
% MA 3457 / CS 4033 
%Homework 3 Problem 2

%
% Function using Newton's Divided Difference method to generate coefficients 
% of Newton polynomials that pass through the points (X,Y)
%
% Input: X  = x points
%        Y  = y points = f(X)
%
% Output: NDD = list of coefficients for the Newton polynomial

N = length(X); %length of vector containing x points
NDD = zeros(N,N); %create square matrix (NxN) of all zeroes
NDD(:, 1) = Y; %look through all the rows and first column in the matrix NDD and set this equal to ypts

%Generate the Newton's polynomial coefficients
for i = 1:N-1 %set i to index row 1 and end at row N-1
    for j=1:i % set j to index first column and end at column (i) which will form a table with numbers in the lower triangle and zeroes in the upper triangle of the table
        NDD(i+1,j+1)=(NDD(i+1, j) - NDD(i, j))/(X(i+1)-X(i-j+1)); %this is the divided difference formula
    end %end the for loop iterating through j
end % end the for loop iterating through i
end %end the function