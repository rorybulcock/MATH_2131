%% Homework Assignment 4 - checkMatrixProperties(A) Function

% Write a function checkMatrixProperties(A) that takes a square matrix, A,
% and prints whether A is diagonal, symmetrical, and/or invertible

function checkMatrixProperties(A)

% Check if matrix is square
[m,n] = size(A);
isSquare = (m == n);

if isSquare
    % Check if matrix is diagonal
    isDiagonal = all(diag(A) == A);
    if isDiagonal
        fprintf('The matrix is diagonal.\n');
    else
        fprintf('The matrix is not diagonal.\n');
    end
    
    % Check if matrix is symmetrical
    isSymmetrical = isequal(A, A');
    if isSymmetrical
        fprintf('The matrix is symmetrical.\n');
    else
        fprintf('The matrix is not symmetrical.\n');
    end
    
    % Check if matrix is invertible
    isInvertible = det(A) ~= 0;
    if isInvertible
        fprintf('The matrix is invertible.\n');
    else
        fprintf('The matrix is not invertible.\n');
    end
else
    fprintf('The matrix is not square.\n');
end

end % end of function
