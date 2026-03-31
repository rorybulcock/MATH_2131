%% Homework Assignment 4

%% Q.1
% Test the checkMatrixProperties() function for each matrix

% Define the matrices
A = [1,0,0;
    0,2,0;
    0,0,3];

B = [1,2;
    2,1];

C = [1,2;
    2,4];

% Check properties for each matrix
fprintf("\nQ.1 Matrix A:\n")
checkMatrixProperties(A);
fprintf("\nQ.1 Matrix B:\n")
checkMatrixProperties(B);
fprintf("\nQ.1 Matrix C:\n")
checkMatrixProperties(C);

% Answer
% Q.1 Matrix A:
% The matrix is not diagonal.
% The matrix is symmetrical.
% The matrix is invertible.
% 
% Q.1 Matrix B:
% The matrix is not diagonal.
% The matrix is symmetrical.
% The matrix is invertible.
% 
% Q.1 Matrix C:
% The matrix is not diagonal.
% The matrix is symmetrical.
% The matrix is not invertible.

%% Q.2
% Test the checkRows() function for the following matrix
A = [1 2 3;
    -1 -2 -3;
    1 -1 0];

% Check the rows of matrix A
fprintf("\nQ.2 Matrix A:\n");
checkRows(A);

% Answer
% Q.2 Matrix A:
% Row 1: All positive
% Row 2: All negative
% Row 3: Mixed entries

%% Q.3
% Test the isDiagDominant() function for the following matrices

% Define the matrices
n = 3;
I = eye(n);
A = [2,1,0.1;
    0.4,0.5,-1;
    0,-3,2];

% Check if matrix A is diagonally dominant
fprintf("\nQ.3 Matrix I:\n");
isDiagDominant(I);
fprintf("\nQ.3 Matrix A:\n");
isDiagDominant(A);

% Answer
% Q.3 Matrix I:
% The matrix is diagonally dominant.
% 
% Q.3 Matrix A:
% The matrix is not diagonally dominant.

%% Q.4
% Test the plotParametric() function for the following parameters

% Establish parameters
a = [1,2];
b = [1,2,3];

plotParametric(a,b,[0 2*pi])

% Answer
% A parametric graph of six curves is generated.
