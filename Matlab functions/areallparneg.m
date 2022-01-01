function [c] = areallparneg(A)
% Done by Mohd Wafa 302539.
% This function takes the input of a matrix and returns the logical value 
% true or false (logical 1 or logical 0), depending on whether all
% rows and columns of the matrix A are partial-negative, or not. 

s = size(A);  % Assigning a variable to the size of the matrix
if sum(any(A<0, 2)) == s(2)   % Checks if all rows are partial-negative
  if sum(any(A<0)) == s(1)    % Checks if all columns are partial-negative
    c = true;
  else
      c = false;
  end
else
    c = false;
end

end

% Done by Mohd Wafa 302539.
