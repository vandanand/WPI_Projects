%defining the function at given x point
f= @(x) x^2*exp(-x^2);

%computing trapezoidal rule 
trapezoidal = (0.25/2) * (f(0)+2*(f(0.25)+f(0.5)+f(0.75)+f(1)+f(1.25)+f(1.50)+f(1.75))+f(2))

%computing simpson's rule 
simpsons = (0.25/3) * (f(0)+2*(f(0.5)+f(1)+f(1.50))+4*(f(0.25)+f(0.75)+f(1.25)+f(1.75))+f(2))

%computing midpoint rule 
midpoint = (2*(0.25))*(f(0.25)+f(0.75)+f(1.25)+f(1.75))