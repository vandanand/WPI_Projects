% Name: Vandana Anand 
%CS 4033 (B-Term 2018): Homework #1, Problem 4 + 5

%This homework is to explore various MatLab commands 
%and practice writing some algorithms using for and while loops

diary hw1prob4+5.txt  % creates a .txt file that will save command window output%%  

%%Problem 4(b)
A = [2 0; 0 1];
B = [1 0 2; 0 3 1];

A*B

inv(A)

%inv(B)

%%Problem 4(c)
y= [4/3 1.2345*exp(-6)];

format short
y

format long
y

format short e
y

format rat
y

format short 
y


%%Problem 4(d)

x= 1:0.5:6;

length(x)

x(3)

%Three lines of code to make the for-loop
for i=1:length(x)
    z(i)=log(x(i));
end
disp(z)

%%Problem #5 
%Five lines of code to make the while-loop
macheps = 1;
while (1+macheps>1)
    macheps=macheps/2;
end
macheps = 2*macheps;
disp(macheps)

eps(1)

diary off   % this stops saving to hw1prob4.txt since you're done!