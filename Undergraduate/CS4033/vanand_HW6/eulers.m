function [t,w]=eulers(a, b, alpha, f, h)

% MA 3457 / CS 4033 (B-Term 2018)
% Student: Vandana Anand
% Homework 6
% Problem 2A
%
% Function to 
%
%
% Input: a - the lower bound of t
%        b - the upper bound of t 
%        alpha - y(a)
%        f - the function to be evaluated
%        h - the step sizes 
%
% Output: a vector of t points and weights
%

N=(b-a)/h; %find N by rearranging the h formula
t(1)=a; %setting t intial to a
w(1)=alpha; %setting initial weight to alpha

for i=1:N %iterate from 1 to N
    w(i+1)=w(i)+h*f(t(i),w(i)); %weight formula 
    t(i+1)=a+i*h; %t formula 
end %end loop

end %end function