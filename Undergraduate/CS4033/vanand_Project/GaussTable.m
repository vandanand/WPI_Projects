function [nodes, weights] = GaussTable(n)

% MA 3457 / CS 4033 (B-Term 2018)
% Student: Vandana Anand
% Project: Gaussian Quadrature
% Problem 2B
%
% Function to assign weights of Gauss-Legendre quadrature rule,
% where int_-1^1 f(x) dx = sum_i=1^n c_i*f(x_i)
%
% Input: n     = index of last node (n+1 points in rule)
%
% Output: w = vector of weights
%         x_nodes = nodes to compute Gauss-Legendre quad rule

format long
%display the nodes when n=2 in the formula
if(n==2)
    nodes = [0.5773502692; -0.5773502692];
    weights = [1.0000000000; 1.0000000000];
    disp("Table for n=2")
    table(nodes, weights)
%display the nodes when n=3 in the formula
elseif(n==3)
    nodes = [0.7745966692;0.0000000000;-0.7745966692];
    weights = [0.5555555556; 0.8888888889; 0.5555555556];
    disp("Table for n=3")
    table(nodes, weights)
%display the nodes when n=4 in the formula
elseif(n==4)
    nodes = [0.8611363116; 0.3399810436; -0.3399810436; -0.8611363116];
    weights = [0.3478548451; 0.6521451549; 0.6521451549; 0.3478548451];
    disp("Table for n=4")
    table(nodes, weights)
%display the nodes when n=5 in the formula
elseif(n==5)
    nodes = [0.9061798459; 0.5384693101; 0.0000000000; -0.5384693101; -0.9061798459];
    weights = [0.2369268850; 0.4786286705; 0.5688888889; 0.4786286705; 0.2369268850];
    disp("Table for n=5")
    table(nodes, weights)
    
end
        
    


