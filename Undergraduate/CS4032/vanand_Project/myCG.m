function [x,iter]=myCG(A,b,x0,tol,maxiter) 

% MA 3257 / CS 4032 (C-Term 2019)
% Vandana Anand
%
% Function to use CG (Conjugate Gradient) method to approximate the solution to n-by-n 
% linear system of equations Ax = b  
%
% Input: A = matrix
%        b = right-hand side vector
%        tol = tolerance level 
%        maxiter = max number of iterations
%
% Output: x= solution vector 
%         iter = number of iteration performed

%Intilize the variables
x=x0;
x_curr=x;
r=b-A*x;
w=r;
r_old = r'*r;
iter=0;

%make sure to do computation while tolerance and max iterations are not met
%yet
while (norm(r)/norm(b) >= tol && iter<maxiter)
    iter=iter+1; %keep track of iterations
   
    v=A*w;
    a=r_old/(v'*w); %alpha
    x_curr=x_curr+a*w; %update x_curr
    r=r-a*v;
    r_new = r'*r; %find new r
    w = r+(r_new/r_old)*w;
    r_old=r_new; %update 
    x=x_curr; %set equal to final solution vector
    
end


    

    
    