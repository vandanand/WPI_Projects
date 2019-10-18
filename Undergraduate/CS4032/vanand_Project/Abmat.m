function [A,b]=Abmat(n)
%Vandana Anand 
%CS4032 Project Krylov

%Finds the nxn A matrix and nx1 column vector b with 1's along diagonal,
%and -0.5 in upper and lower diagonal above and below the center with zeroes
%everywhere else

%input: n - size of matrix
%output: solution vector of size nx1

A = zeros(n,n);
b = zeros(n,1);
b(1,1)=0.5;

for i = 1:n 
    for j = 1:n 
        if i == j 
            A(i,j) = 1; 
        elseif abs(i-j) == 1 
            A(i,j) = -0.5; 
        end 
    end
end

