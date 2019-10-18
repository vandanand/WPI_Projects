% MA 3257 / CS 4032 (C-Term 2019)
% Vandana Anand
%
% Find add/sub and mult/div counts 


n=[3,10,50,100];

%Gaussian Elimination + back substitution

    %mult/div
    Gmultdiv=(n.^3/3)+(n.^2)-(n/3);
    %add/sub
    Gaddsub=(n.^3/3)+(n.^2/2)-(5*n/6);

%Hybrid
    
    %mult/div
    Hmultdiv=(n.^3/3)+((3*n.^2)/2)-(5*n/6);
    %add/sub
    Haddsub=(n.^3/3)+((n.^2)/2)-(5*n/6);
    
    T=table(n', Gmultdiv', Gaddsub', Hmultdiv', Haddsub')
    T.Properties.VariableNames = {'n' 'Gmultdiv' 'Gaddsub' 'Hmultdiv' 'Haddsub'}