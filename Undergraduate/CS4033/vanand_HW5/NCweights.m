function [w,x_nodes] = NCweights(n,type,xint)

% MA 3457 / CS 4033 (B-Term 2018)
% Instructor: Vandana Anand
%
% Function to assign weights of Newton-Cotes (open or closed) (n+1)-point
% quadrature rule, where int_a^b f(x) dx = sum_i=0^n w_i*f(x_i)
%
% Input: n     = index of last node (n+1 points in rule)
%        type  = 'open' or 'closed' Newton-Cotes formula
%        xint  = interval [a,b] on x-axis over which intergral approximated
%
% Output: w = vector of weights
%         x_nodes = nodes to compute Newton-Cotes quad rule

a = xint(1);
b = xint(2);

if ( strcmp(type,'open') == 1 )
    % Compute step size h
    h = (b-a)/(n+2);
    
    % Compute nodes
    x_nodes = a+h:h:b-h;
    
    % Assign weights of formula
    if ( n == 0 ) % Midpoint rule
        w = 2*h; 
    elseif ( n == 1 ) %formula when n = 1
        w = 3*h/2*[1 1];
    elseif ( n == 2 ) %formula when n = 2
        w = 4*h/3*[2 -1 2];
    elseif ( n == 3 ) %formula when n = 3
        w = 5*h/24*[11 1 1 11];
    end
    
elseif ( strcmp(type,'closed') == 1 )
    % Compute step size h
    h = (b-a)/n;
    
    % Compute nodes
    x_nodes = a:h:b;
    
    % Assign weights of formula
    if ( n == 1 ) % Trapezoidal rule
        w = h/2*[1 1]; 
    elseif ( n == 2 ) % Simpson's rule
        w = h/3*[1 4 1]; 
    elseif ( n == 3 ) %Simpson's Three-Eights Rule
        w = 3*h/8*[1 3 3 1];
    elseif (n == 4 ) %formula when n = 4
        w = 2*h/45*[7 32 12 32 7];
    end
    
else
    error('Please specify correct type: open or closed.')
end


