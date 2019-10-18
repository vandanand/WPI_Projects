% MA 3257 / CS 4032 (C-Term 2019)
% Vandana Anand
%
% Function to use CG (Conjugate Gradient) method to approximate the solution to n-by-n 
% linear system of equations Ax = b  

A=[1 -0.5 0; -0.5 1 -0.5; 0 -0.5 1];
b=[0.5;0;0];
x0=[0;0;0];
tol=0.000001;
maxiter=25;

[x,iter]=myCG(A,b,x0,tol,maxiter)