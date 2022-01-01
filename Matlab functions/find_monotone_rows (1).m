
% Task-1
% Find all strictly monotone (either strictly increasing or strictly
% decreasing) rows in matrix A. Those rows should be returned as a row 
% vector. If none are present return empty array.

function [A] = find_monotone_rows(M)
% Done by Mohd Wafa 302539.
% This function takes the input of an array and finds the strictly
% monotone rows, which are rows of vectors in the matrix that are either
% strictly increasing or strictly decreasing. The rows are returned in the
% output array A.

A = []; %Assigning an empty array to output array A.
for i = 1:size(M, 1) %for-loop to go through the rows of the matrix.
 if(all(diff(M(i, 1:size(M, 2))) < 0) ...
         || all(diff(M(i, 1:size(M, 2))) > 0)) %This if-statement checks 
     %whether the element in the rows are strictly increasing or decreasing
     %by checking the inequalities of the differences between the elements
     %in the row and zero. Only strictly monotonic rows are fulfilled from
     %this statement and the row number is later inserted in the output
     %array below.
                                       
     A(end + 1) = i; %Assigning the value of the rows to the matrix A.
 end
end
end


