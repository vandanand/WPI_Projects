%Vandana Anand
% MA 3457 / CS 4033
%Homework 4 Problem 2B

clear; close all; clc

% Use Three point End point formula to approximate f'(x0) where f(x) = e^(5x)

x = logspace(-2, 5);
f = @(x) exp(5*x);
f_prime = @(x) 5*exp(5*x);

% Three point End point approximation at x0 = 0.25
x0 = 0.25;
%vector h with values 0.1 to 10^-12
h  = [0.1, 0.01, 0.001, 0.0001, 0.00001, 0.000001, 0.0000001, 0.00000001, 0.000000001, 0.0000000001, 0.00000000001, 0.000000000001];
ThreeptEndpt_approx = (-3*f(x0)+ 4*f(x0+h)- f(x0+2*h))./(2*h); %3pt end point formula

%calculate the absolute error
abs_err = abs(f_prime(x0)-ThreeptEndpt_approx);

%The graph (figure 1)
figure(1);
loglog(h, abs_err, '-s'); 

%Additional details for the graph
title("Loglog plot");
display=(['h = ', num2str(h),' , abs err = ',num2str(abs_err)])
set(gca,'FontSize',20);
axis tight