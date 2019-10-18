function [p,iter]=bisection(f,a,b,tol)
% MA 3257 / CS 4032 (C-Term 2019)
% Vandana Anand
%
% Function to use bisection method to approximate the solution to  
% non-linear system of equations Ax = b
%
% Input:  f   = function to evaluate 
%         a   = first interval bound
%         b  = second interval bound
%
% Output: p = approximation to the non-linear system
%
format long

iter=0; %initialize

if (f(a)*f(b)>0) %error checking to make sure signs are different
    disp("Invalid")
else 
    while(1)
        iter=iter+1; %keep track of iterations
        p=(a+b)/2; %find midpoint
        if(p-a < tol) %tolerance
            break;
        end
    
        if (f(a)*f(p)>0) %bisection method 
                a=p;
        else
                b=p;
            
        end
    end
end

