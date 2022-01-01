function [ b ] = ismagic( A )
% Done by Mohd Wafa
% This function takes an input of a matrix and computes the sum of
% each row, column, diagonal, and anti-diagonal of the matrix to check 
% if the input matrix is a magic square.Function will return the logical 
% value true or false (logical 1 or logical 0) based on the output.
s = size(A);
    
    % Each Row
    R = zeros(1,s(1));
    for i = 1:s(1)
        for j = 1:s(2)
            R(i) = R(i) + A(i,j);
        end
    end
    % Each Column
    C = zeros(1,s(2));
    for i = 1:s(2)
        for j = 1:s(1)
            C(i) = C(i) + A(j,i);
        end
    end
    % Diagonal
    D = 0;
    for i = 1:s(1)
        D = D + A(i,i);
    end
    
    % Anti-Diagonal
    antiD = 0;
    for i = 1:s(1)
        k = -i+s(2)+1;
        antiD = antiD + A(i,k);
    end
    
    % Checking whether all the different sums are equal
    if and(and((R == C) , (C == D)),(D == antiD))
        b=true;
    else
        b=false;
    end