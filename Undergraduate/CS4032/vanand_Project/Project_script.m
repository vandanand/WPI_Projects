% MA 3257 / CS 4032 (C-Term 2019)
% Vandana Anand
%
% Function to apply various methods to approximate the solution to n-by-n 
% linear system of equations Ax = b  
%

format long
%% n=5
[A,b]=Abmat(5);
w=1.33333;
x0=zeros(5,1);
tol=0.000001;
restart=1000000;
maxiter=1000000;

[x,iter,val] = jacobi(A,b,x0,tol,maxiter)
[x,iter,val] = gauss_seidel(A,b,x0,tol,maxiter)
[x,iter,val] = SOR(A,b,x0,w,tol,maxiter)
pcg(A,b,tol,maxiter)
gmres(A,b,restart,tol,maxiter)

true5 = A\b

%% n=10
[A,b]=Abmat(10);
x0=zeros(10,1);
w=1.56039;

[x,iter,val] = jacobi(A,b,x0,tol,maxiter)
[x,iter,val] = gauss_seidel(A,b,x0,tol,maxiter)
[x,iter,val] = SOR(A,b,x0,w,tol,maxiter)
pcg(A,b,tol,maxiter)
gmres(A,b,restart,tol,maxiter)

true10 = A\b

%% n=50
[A,b]=Abmat(50);
x0=zeros(50,1);
w=1.88402;

[x,iter,val] = jacobi(A,b,x0,tol,maxiter)
[x,iter,val] = gauss_seidel(A,b,x0,tol,maxiter)
[x,iter,val] = SOR(A,b,x0,w,tol,maxiter)
pcg(A,b,tol,maxiter)
gmres(A,b,restart,tol,maxiter)

true50 = A\b

%% n=100
[A,b]=Abmat(100);
x0=zeros(100,1);
w=1.93968;

[x,iter,val] = jacobi(A,b,x0,tol,maxiter)
[x,iter,val] = gauss_seidel(A,b,x0,tol,maxiter)
[x,iter,val] = SOR(A,b,x0,w,tol,maxiter)
pcg(A,b,tol,maxiter)
gmres(A,b,restart,tol,maxiter)

true100 = A\b

%% n=500
[A,b]=Abmat(500);
x0=zeros(500,1);
w=1.98754;

[x,iter,val] = jacobi(A,b,x0,tol,maxiter)
[x,iter,val] = gauss_seidel(A,b,x0,tol,maxiter)
[x,iter] = SOR(A,b,x0,w,tol,maxiter)
pcg(A,b,tol,maxiter)
gmres(A,b,restart,tol,maxiter)

true500 = A\b
