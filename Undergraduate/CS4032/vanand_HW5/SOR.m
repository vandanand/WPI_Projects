function [x,iter] = SOR(A,b,x0,w,tol,maxiter)

% MA 3257 / CS 4032 (C-Term 2019)
% Vandana Anand
%
% Function to use SOR's method to approximate the solution to n-by-n 
% linear system of equations Ax = b
%
% Input:  A   = n-by-n coefficient matrix 
%         b   = n-by-1 RHS vector
%         x0  = initial guess vector
%         w   = omega
%         tol = tolerance for stopping criterion
%         maxiter = maximum number of iterations
%
% Output: x = n-by-1 solution vector
%         iter = total number of iterations performed


% Check for nonzero diagonal elements of A
if ( all(diag(A)) == 0 )
    % At least one zero diagonal entry, so no unique solution
    disp(' ')
    disp('No unique solution.')
    disp(' ')
    
else
    % Perform SOR method to approximation solution to Ax=b
    
    % Initialize the variables 
    n = size(A,1); 
    x_curr = x0;
    x_new  = zeros(n,1);
    
    D = diag(diag(A));
    L = -tril(A, -1);
    U = -triu(A, 1);
    a = (D-w*L);

    iter    = 0;
    normval = Inf; 
        
    %Set conditions for the while loop
    while ( normval>=tol && iter<maxiter ) 
        %Make sure distance between consecutive integers are less than or 
        %equal to the tolerance level set by user
        
        %And make sure to set the number of iterations less than the max
        %iterations set by the user
        
        % Update iteration
        iter = iter + 1;
        
        % Compute new approximation
        for i = 1:n
            x_new = a\(((1-w)*D + w*U)*x_curr) + w*(a\b); %SOR specific method
        end
        
        % Compute distance between consecutive iterations using three
        %different stopping criterion
        
        normval = norm(x_new-x_curr,inf);
        %normval  = norm((A*x_new)-b,inf);
        %normval = norm(x_new-x_curr,inf)/norm(x_new,inf);
        
        % Update for next iteration
        x_curr = x_new;
        
    end
    
    x = x_new;  % approximate solution 
    
end

