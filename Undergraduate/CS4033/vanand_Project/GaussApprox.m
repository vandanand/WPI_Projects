%function []= GaussApprox()

% MA 3457 / CS 4033 (B-Term 2018)
% Student: Vandana Anand
% Project: Gaussian Quadrature
% Problem 2C
%
% Function to find the weights and nodes of the problem: 
% int_3^3.5 f(x) dx where f(x) is x/(sqrt((power(x, 2))-4))
%
%
% Inputs: none
% Outputs: the weights and nodes

format long

%interval
a=3;
b=3.5;

%defining the function f(x)
syms x
f = x/(sqrt((power(x,2))-4));

%find true value of the function at given interval a and b
trueValue = double(int(f, a, b));

%since interval is not from -1 to 1, need to tranform the integral to make
%it from -1 to 1
var = @(t) 1/2*((b-a)*t+a+b);
func = @(var) var/(sqrt((power(var, 2))-4))*((b-a)/2);

%Calculate the weights and nodes at n=2
[nodes2, weights2]=GaussTable(2); %call function previosly made to calculate 
% weights and nodes at specific n value
sum2=0;
for i=1:length(nodes2) %iterate through how many nodes there are
    sum2=sum2+weights2(i)*func(var(nodes2(i))); %sum the weights and nodes 
end

%Same appraoch as above for the rest of the for loops:

%Calculate the weights and nodes at n=3
[nodes3, weights3]=GaussTable(3);
sum3=0;
for i=1:length(nodes3)
    sum3=sum3+weights3(i)*func(var(nodes3(i)));
end


%Calculate the weights and nodes at n=4
[nodes4, weights4]=GaussTable(4);
sum4=0;
for i=1:length(nodes4)
    sum4=sum4+weights4(i)*func(var(nodes4(i)));
end

%Calculate the weights and nodes at n=5
[nodes5, weights5]=GaussTable(5);
sum5=0;
for i=1:length(nodes5)
    sum5=sum5+weights5(i)*func(var(nodes5(i)));
end

% ***GLApprox stands for Gauss-Legendre Approximation***

%nodes and weights for n=2
GLApprox2=sum2
%absolute error for n=2
abssoluteError2=abs(trueValue-sum2)

%nodes and weights for n=3
GLApprox3=sum3
%absolute error for n=3
abssoluteError3=abs(trueValue-sum3)

%nodes and weights for n=4
GLApprox4=sum4
%absolute error for n=4
abssoluteError4=abs(trueValue-sum4)

%nodes and weights for n=5
GLApprox5=sum5
%absolute error for n=5
abssoluteError5=abs(trueValue-sum5)