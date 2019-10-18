% Vandana Anand
% MA 3457 / CS 4033 
%Homework 3 Problem 3

%Calculating the least squares polynomials of degree 1, 2, 3
%
%Variables:
%xpts = the given data for x points 
%ypts = the given data for y points
%X1 = design matrix for degree 1
%X2 = design matrix for degree 2
%X3 = design matrix for degree 3
%error1 = error for degree 1 polynomial
%error2 = error for degree 2 polynomial
%error3 = error for degree 3 polynomial
%line1 = the final linear polynomial equation for degree 1
%line2 = the final quadratic polynomial equation for degree 2
%line3 = the final cubic polynomial equation for degree 3

%Homework 3 Part A

xpts = [0.2; 0.3; 0.6; 0.9; 1.1; 1.3; 1.4; 1.6];
ypts = [0.050446; 0.098426; 0.33277; 0.72660; 1.0972; 1.5697; 1.8487; 2.5015];

%Design Matrix for Degree 1
X1 = [1,0.2; 1,0.3; 1,0.6; 1,0.9; 1,1.1; 1,1.3; 1,1.4; 1,1.6];

degree1 = (X1' * X1) \ (X1' * ypts)
error1 = sum(power(ypts-(-0.5125+1.6655*xpts),2))
line1 = -0.5125+1.6655*xpts;

%Design Matrix for Degree 2
X2 = [1,0.2,0.04; 1,0.3,0.09; 1,0.6,0.36; 1,0.9,0.81; 1,1.1,1.21; 1,1.3,1.69; 1,1.4,1.96; 1,1.6,2.56];

degree2 = (X2' * X2) \ (X2' * ypts)
error2 = sum(power(ypts-(0.0851-0.3114*xpts+1.1294*(power(xpts, 2))),2))
line2 = 0.0851-0.3114*xpts+1.1294*(power(xpts, 2));

%Design Matrix for Degree 3
X3 = [1,0.2,0.04,0.008; 1,0.3,0.09,0.027; 1,0.6,0.36,0.216; 1,0.9,0.81,0.729; 1,1.1,1.21,1.331; 1,1.3,1.69,2.197; 1,1.4,1.96,2.744; 1,1.6,2.56,4.096];

degree3 = (X3' * X3) \ (X3' * ypts)
error3 = sum(power(ypts-(-0.0184+0.2484*xpts+0.4029*(power(xpts, 2))+0.2662*(power(xpts, 3))),2))
line3 = -0.0184+0.2484*xpts+0.4029*(power(xpts, 2))+0.2662*(power(xpts, 3));

%Homework 3 Part B

%plotting the polynomials found above 
figure(1);
plot(xpts, ypts, '.k', 'MarkerSize', 30); %original points
hold on;
plot(xpts, line1, '-b', 'LineWidth', 2); %linear 
plot(xpts, line2, '-r', 'LineWidth', 2); %quadratic
plot(xpts, line3, '-g', 'LineWidth', 2); %cubic 

hold off;

%Homework 4 Part A

%xpts will stay the same
logYPTS = log(ypts); %take log of each of the ypts

%Using the same design matrix as degree 1 in problem #3a
%X1 = [1,0.2; 1,0.3; 1,0.6; 1,0.9; 1,1.1; 1,1.3; 1,1.4; 1,1.6];

logDegree1 = (X1' * X1) \ (X1' * logYPTS)
error4 = sum(power(logYPTS-(log(0.0457)+2.7073*xpts), 2))
line4 = 0.0457*exp(2.7073*xpts); %final equation in y=be^ax form 

%Homework 4 Part B

f = @(x) sum((ypts-x(1)*exp(x(2)*xpts)).^2); %sum of squared errors
cnew = fminsearch(f,[0,0]) 

%plotting the line that was calculated in #4 part A and the line generated
%by the fminsearch function
figure(2);
plot(xpts,cnew(1)*exp(cnew(2)*xpts),'-r', 'LineWidth', 2); %fminsearch function line
hold on;
plot(xpts, line4, '-b', 'LineWidth', 2); %line from part A
plot(xpts,ypts,'.k', 'MarkerSize', 30); %original points
hold off;
