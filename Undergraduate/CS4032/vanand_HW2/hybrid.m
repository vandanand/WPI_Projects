function h = hybrid(A)

% MA 3257 / CS 4032 (C-Term 2019)
% Vandana Anand
%
% Function to perform hybrid elimination (Gaussian forward and backward elimination) 
% on the augmented matrix A of an n-by-n linear system of equations
%
% Input: A = n-by-(n+1) augmented matrix 
%
% Output: x = n-by-1 solution vector


%input matrix
A = [1 1 0 3 4; 2 1 -1 1 1; 3 -1 -1 2 -3; -1 2 3 -1 4];

% Determine size of system (n-by-n)
n = size(A,1);

% Gaussian (forward) elimination
for i = 1:n-1
    % Switch rows (if necessary)
    for p = 2:n
        % Moves row with zero in A(i,i) entry to last row
        if ( A(i,i) == 0 )
            temp   = A(i,:);
            A(i,:) = A(p,:);
            A(p,:) = temp;
        end
    end
    
    % Perform forward elimination
    for j = i+1:n %iterate forward
        mu     = A(j,i)/A(i,i); %find multiplying constant m
        A(j,:) = A(j,:) - mu*A(i,:); %Perform the row manipulation Rn->Rn-m*Rn-1
    end
    
end

% Perform backward elimination
for i = n:-1:2 %iterate backward 
    for j=i-1:-1:1
        mu     = A(j,i)/A(i,i); % same as forward above
        A(j,:) = A(j,:) - mu*A(i,:);
    end
end

% Initialize solution vector
x = zeros(n,1);

% Find entries of solution vector
x(n) = A(n,n+1)/A(n,n);
for i = n-1:-1:1
    x(i) = A(i,n+1)/A(i,i); 
end

%display matrix A
A
%display solution matrix 
x





