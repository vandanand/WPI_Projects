% Name: Vandana Anand
%
% MA 3257 / CS 4032 (C-Term 2019): Homework #1, Problem 2 and 3

% (Double %% makes a section break)


clear; close all; clc % always clear everything to start fresh!

diary hw1prob2and3.txt  % creates a .txt file that will save command window output


%% Problem 2(a)

%matrix operations
A = [1 2; 3 4]
B = [1 0 2; 0 3 1]

multiply=A*B
transpose=B'
row=A(2,:)
invA=inv(A)
%invB=inv(B)


%% Problem 2(b)

% practice with formatting

y = [4/3 1.2345e-6]

format short

y

format long

y

format short e

y

format rat

y

format short



%% Problem 2(c)

x = linspace(1,6,10) %10 equal points between numbers 1 to 6 

xlength=length(x) %number of elements in x

for i=1:length(x) %
    z(i) = log(x(i));
end

disp(z)

%% Problem 2(d)

%test numbers
a=2 
a=-1

if(a>0) %if number given is greater than zero
    log(a) %calculate log
elseif(a<=0) %if number given is less than zero
    disp("log(a) is undefined") %cannot compute log
end

%% Problem 3(a)

f = @(x) x.^2 - 3*x + 5
whenxis3=f(3)

%other function found in file called func.m

%% Problem 3(b)

x = 0:0.1:10;
plot(x,f(x), '-k', 'LineWidth', 2);
title('f(x) vs x', 'FontSize', 20)
xlabel('x', 'FontSize', 17)
ylabel('f(x)', 'FontSize', 17)

%%

diary off   % this stops saving to hw1prob2.txt since you're done!

% Note: you can save your diary .txt file as a .pdf to submit on Canvas




