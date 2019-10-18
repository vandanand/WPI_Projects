% MA 3257 / CS 4032 (C-Term 2019)
% Vandana Anand
%
%Implementing the SOR method
%

format long
%% Problem 1a

A=[3 -1 1; 3 6 -2; 3 3 7];
b=[5;1;3];
x0=[0;0;0];
w=1.2;
tol=0.000001;
maxiter=150;
[x,iter] = SOR(A,b,x0,w,tol,maxiter)

%% Problem 1b
A=[3 -1 1; 3 6 -2; 3 3 7];
b=[5;1;3];
x0=[0;0;0];
tol=0.000001;
maxiter=150;

[x,iter] = SOR(A,b,x0,0.1,tol,maxiter)
[x,iter] = SOR(A,b,x0,0.5,tol,maxiter)
[x,iter] = SOR(A,b,x0,1.0,tol,maxiter)
[x,iter] = SOR(A,b,x0,1.5,tol,maxiter)
[x,iter] = SOR(A,b,x0,1.9,tol,maxiter)

%% Problem 2c
A=[10 -1 0; -1 10 -2; 0 -2 10];
b=[9;7;6];
x0=[0;0;0];
w = 1.1;
tol=0.00001;
maxiter=150;

[x,iter] = SOR(A,b,x0,w,tol,maxiter)

%% Problem 2d

A=[10 -1 0; -1 10 -2; 0 -2 10];
b=[9;7;6];
x0=[0;0;0];
w = 1.01282;
tol=0.00001;
maxiter=150;

[x,iter] = SOR(A,b,x0,w,tol,maxiter)

