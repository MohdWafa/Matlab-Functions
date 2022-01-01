function [lam,v,iter] = eig3max(a,b,c,tol,maxiter)
% Done by Mohd Wafa. 302539.

% In this function, we used the power method to calculate the dominant
% eigenvalue and the corresponding eigenvector of the entered tridiagonal
% matrix. The matrix is entered into the function as 3 vectors which
% represnt the 3 different diagonals of the matrix. 
% a,b,c are the different diagonals of the matrix A. 
% maxiter is the maximum number of iterations allowed.
% tol is the tolerence for the estimated error.
N = size(b,1); % Taking the number of elements in the main diagonal of A. 
               
A = diag(b) + diag(c,1) + diag(a,-1); % Creating the necessary tridiagonal
                                      % matrix
v = ones(1,N); % The initial choice of eigenvector.
n = length(v); % Size of initial eigenvector.
u = zeros(n,1);

err = 10;
lam = 1;
m = 1;
iter = 0;
 while (err > tol & iter < maxiter) %Calculating the greatest eigenvalue and 
                                %the corresponding eigenvector using the
                                %power method
   u = A*v; % Multiplying the tridiagonal matrix with the initial choice for
          % eigenvector.   
   m = max(abs(u));  % Taking the absolute max value from the the formed 
                   % vector as the eigenvalue
   v = u/m;           
   err = abs(lam-m); % Change towards error during the loop
   lam = m;          % Equating the correct values to lam.
   iter = iter+1;  % iter + 1 to keep track of iterations.
 end
 
if norm(A*v-lam*v) <= tol*abs(lam)*norm(v) % Additional test asked to be
                                           % performed in the task.
    iter = -1;
end
end

% Done my Mohd Wafa. 302539.