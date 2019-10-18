% MA 3457 / CS 4033 (B-Term 2018)
% Student: Vandana Anand
% Problem 2A

format long

%% Part AA
disp("Part AA")

%set up the matrix with the 6 equations and 6 unknown variables
%Note:
%x1, x2, x3 are c1, c2, c3
%x3, x4, x5 are x1, x2, x3
F=@(x) [x(1)+x(2)+x(3)-2; ...
    x(1)*x(4)+x(2)*x(5)+x(3)*x(6); ...
    x(1)*power(x(4), 2)+x(2)*power(x(5), 2)+x(3)*power(x(6), 2)-(2/3);...
    x(1)*power(x(4), 3)+x(2)*power(x(5), 3)+x(3)*power(x(6), 3);...
    x(1)*power(x(4), 4)+x(2)*power(x(5), 4)+x(3)*power(x(6), 4)-(2/5);...
    x(1)*power(x(4), 5)+x(2)*power(x(5), 5)+x(3)*power(x(6), 5)];

x0 = [1; 1; 1; 1; 0; -1]; %intial guess x0

fsolve(F, x0) %use fsolve function to solve the matrix above 


%% Part AB
disp("Part AB")

syms x
%solve the P3(x) equation
xnodes = double(solve(power(x, 3)-3*x/5==0, x));

%plug in nodes x1, x2, x3 into the first equation: int -1^1 x-x2/x1-x2 *
%x-x3/x1-x3 dx
f1= ((x-0)/(-sqrt(15)/5))*((x-(sqrt(15)/5))/(-(sqrt(15)/5)-(sqrt(15)/5)));

%find the integral of the above equation
weight1= int(f1, -1, 1);
x1 = xnodes(3)
c1=double(weight1) %answer

%plug in nodes x1, x2, x3 into the second equation: int -1^1 x-x1/x2-x1 *
%x-x3/x2-x3 dx
f2= ((x-(-sqrt(15)/5))/(sqrt(15)/5))*((x-(sqrt(15)/5))/(-(sqrt(15)/5)));

%find the integral of the above equation
weight2= int(f2, -1, 1);
x2 = xnodes(1)
c2=double(weight2) %answer

%plug in nodes x1, x2, x3 into the third equation: int -1^1 x-x1/x3-x1 *
%x-x2/x3-x2 dx
f3= ((x-(-sqrt(15)/5))/((sqrt(15)/5)-(-sqrt(15)/5)))*((x-0)/((sqrt(15)/5)));

%find the integral of the above equation
weight3= int(f3, -1, 1);
x3 = xnodes(2)
c3=double(weight3) %answer
