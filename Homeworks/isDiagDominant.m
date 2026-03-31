%% Homework Assignment 4 - isDiagDominant(A) function

% Write a function that checks if a matrix, A, is diagonally dominant.

function isDominant = isDiagDominant(A)

% Check if matrix is square
[m,n] = size(A);
isSquare = (m == n);
if ~isSquare
    error('Input matrix must be square.');
end
    
 % Get absolute values of diagonal elements
 diagElements = abs(diag(A));
    
 % Sum of absolute values of each row
 rowSums = sum(abs(A), 2);
    
 % Off-diagonal sum for each row = rowSum - abs(diagonal)
 offDiagSums = rowSums - diagElements;
    
 % Check if |A(i,i)| >= sum(|A(i,j)|) for all rows
 isDominant = all(diagElements >= offDiagSums);
 if isDominant
     fprintf('The matrix is diagonally dominant.\n');
else
    fprintf('The matrix is not diagonally dominant.\n');

end