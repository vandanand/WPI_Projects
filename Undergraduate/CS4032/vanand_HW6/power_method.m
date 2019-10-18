function [lambda,v,iter] = power_method(A,x0,tol,maxiter)

% MA 3257 / CS 4032 (C-Term 2019)
% Instructor: Andrea Arnold
%
% Function implementing power method for approximating dominant eigenvalue
% of matrix A
%
% Input:  A   = n-by-n matrix 
%         x0  = initial guess for eigenvector
%         tol = tolerance for stopping criterion
%         maxiter = maximum number of iterations
%
% Output: lambda = approximated dominant eigenvalue
%         v    = associated dominant eigenvector
%         iter = total number of iterations performed


% Initialize
x = x0/norm(x0,inf);
p = find(x==norm(x,inf),1);

iter = 0;
normval = inf;

while ( normval>=tol && iter<maxiter )
    
    % Update iteration
    iter = iter + 1;
    
    % Compute matrix-vector product
    y = A*x;
    
    % Approximate dominant eigenvalue
    mu = y(p);
    
    % Update norm for stopping criterion
    ynorm   = norm(y,inf);
    normval = norm(x-y/ynorm,inf);
    
    % Update eigenvector, index for next iteration
    x = y/ynorm;
    p = find(x==norm(x,inf),1);
    %pause;
    
end

% Output approximate dominant eigenvalue and associated eigenvector
lambda = mu;
v = x;

