% MA 3257 / CS 4032 (C-Term 2019)
% Vandana Anand
% HW7 Script for bisection and newton's method 

%% Problem 1b

f=@(x) -x.^2+exp(x)+3*x-2;
a=0;
b=1;
tol=0.00001;

[p,iter]=bisection(f,a,b,tol)

%% Problem 3b
f=@(x) x.^3+3*x.^2-1;
deriv=@(x) 3*x.^2+6*x;
p0=-2.5;
tol=0.00001;
iter=25;

[p,maxiter]=newtons(f,deriv,p0,tol,iter)

p0=-3;
[p,maxiter]=newtons(f,deriv,p0,tol,iter)