% MA 3257 / CS 4032 (C-Term 2019)
% Vandana Anand
%
%Implementing the jacobi and gauss-seidel methods
%

format long
%% Problem 1a

A=[3 -1 1; 3 6 -2; 3 3 7];
b=[5;1;3];
x0=[0;0;0];
tol=0.000001;
maxiter=100;
[x,iter] = gauss_seidel(A,b,x0,tol,maxiter)

%% Problem 1c
A=[3 -1 1; 3 6 -2; 3 3 7];
b=[5;1;3];
x0=[0;0;0];
tol=0.01;
maxiter=100;
[x,iter] = gauss_seidel(A,b,x0,tol,maxiter)

A=[3 -1 1; 3 6 -2; 3 3 7];
b=[5;1;3];
x0=[0;0;0];
tol=0.000001;
maxiter=100;
[x,iter] = gauss_seidel(A,b,x0,tol,maxiter)

A=[3 -1 1; 3 6 -2; 3 3 7];
b=[5;1;3];
x0=[0;0;0];
tol=0.0000000001;
maxiter=100;
[x,iter] = gauss_seidel(A,b,x0,tol,maxiter)

%% Problem 1d
A=[3 -1 1; 3 6 -2; 3 3 7];
b=[5;1;3];
x0=[4;1;2];
tol=0.000001;
maxiter=100;
[x,iter] = gauss_seidel(A,b,x0,tol,maxiter)

A=[3 -1 1; 3 6 -2; 3 3 7];
b=[5;1;3];
x0=[5;1;3];
tol=0.000001;
maxiter=100;
[x,iter] = gauss_seidel(A,b,x0,tol,maxiter)

A=[3 -1 1; 3 6 -2; 3 3 7];
b=[5;1;3];
x0=[10;12;13];
tol=0.000001;
maxiter=100;
[x,iter] = gauss_seidel(A,b,x0,tol,maxiter)

%% Problem 2b
A=[1 2 -2; 1 1 1; 2 2 1];
b=[7;2;5];
x0=[0;0;0];
tol=0.00001;
maxiter=100;
[x,iter] = jacobi(A,b,x0,tol,maxiter)

%% Problem 2d

A=[1 2 -2; 1 1 1; 2 2 1];
b=[7;2;5];
x0=[0;0;0];
tol=0.00001;
maxiter=25;
[x,iter] = gauss_seidel(A,b,x0,tol,maxiter)


