function A = growmat(n)
% Done by Mohd Wafa 302539.
% This function takes the input of the number of rows and columns of the 
% required matrix and generates the required matrix as asked in the 
% Excercise Lab 2.

A = zeros(n);  %Initializing the matrix as a square matrix of zeros.

for i = 1:n      %Loop to create the required matrix.
    A(:,i) = 1+i*(0:n-1);
end

% Done by Mohd Wafa 302539.