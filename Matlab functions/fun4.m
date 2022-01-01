function Y = fun4(X) 
%Done by Mohd Wafa. 302539.


% This function  computes very accurately and very efficiently the values
%of the expression
                  %(sin x − x) (x^-3)
% for arguments X from the interval [−8π, 8π]. The result Y
% must be a matrix of exactly the same size as X, where each element yij 
% should be the best possible approximation to the value
                  % (sin xij − xij) (xij^-3).





%Setting the size of Y equal to X.
Y = zeros(size(X));

%For loop to implement the series
 for i=1:145        
% Just assigning values to some variables used in the approximation, just
% so the code looks neat and is understandable.    
a = (-i)^145;
b = i^145;
c = 2*factorial(148);  


Y = Y - ((a + b)/(c));  % Assigning the correct values to Y.

 end
end


% Mohd Wafa. 302539