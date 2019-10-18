function [p,maxiter]=newtons(f,deriv,p0,tol,iter)
% MA 3257 / CS 4032 (C-Term 2019)
% Vandana Anand
%
% Function to use Newton's method to appropimate the solution to  
% non-linear system of equations Ap = b
%
% Input:  f   = function to evaluate 
%         deriv   = derivative of f
%         p0   = intial guess 
%         tol  = tolerance level
%         iter = number of max iterations
%
% Output: p = appropimation to the non-linear system
%         mapiter = number of iterations that algorithm takes
%
format long

p(1) = p0 - (f(p0)/deriv(p0)); %find first p1 value
ep(1) = abs(p(1)-p0); %find error value for tolerance 
maxiter=0; 
k = 2;
    while (ep(k-1) >= tol) && (k <= iter)
        maxiter=maxiter+1; %keep track of iterations
        p(k) = p(k-1) - (f(p(k-1))/deriv(p(k-1))); %Newton's formula
        ep(k) = abs(p(k)-p(k-1)); %update error
        k = k+1;
    end
end