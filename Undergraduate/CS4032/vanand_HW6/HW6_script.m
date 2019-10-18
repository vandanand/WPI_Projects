% MA 3257 / CS 4032 (C-Term 2019)
% Vandana Anand
%
%Implementing the Power method
%

format long
%% Problem 1b

A1=[2 1 1; 1 2 1; 1 1 2];
x0=[1; -1; 2];
tol=0.0001;
maxiter=150;
[lambda,v,iter] = power_method(A1,x0,tol,maxiter)

%% Problem 1c

A2=[1.00002 0.000016; -0.000001 0.999999];
x0=[1; 1]; %choose nonzero initial vector
tol=0.0001;
maxiter=150;
[lambda,v,iter] = power_method(A2,x0,tol,maxiter)

%% Problem 2

A3=[4.592920 -0.472934 0; -0.472934 3.108760 -0.232083; 0 -0.232083 1.298319];
[Q,R]=qr(A3)
