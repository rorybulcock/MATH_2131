%% Homework 6
% Housekeeping
clear;
clc;

%% Q.1

% Define Matrix A, the subsequent b vectors, and the x vector
A = [1 0 1;
    0 1 1;
    0 0 0];
b_1 = [2;3;0];
b_2 = [1;1;1];
x = [-1;-1;1];

% Determine if b_1 is in the column space of A
isInColumnSpace_b1 = rank(A) == rank([A b_1]);
if isInColumnSpace_b1 == 1
    fprintf("TRUE: Vector b1 is in column space of the matrix A\n");
else
    fprintf("FALSE: Vector b1 is not in column space of the matrix A\n");
end

% Determine if b_2 is in the column space of A
isInColumnSpace_b2 = rank(A) == rank([A b_2]);
if isInColumnSpace_b2 == 1
    fprintf("TRUE: Vector b2 is in column space of the matrix A\n");
else
    fprintf("FALSE: Vector b2 is not in column space of the matrix A\n");
end

% Determine if x is in the null space of A
isInNullSpace = all(A * x == 0);
if isInNullSpace == 1
    fprintf("TRUE: Vector x is in null space of the matrix A\n");
else
    fprintf("FALSE: Vector x is not in null space of the matrix A\n");
end

%% Q.2
% Define matrix A
A = [1 3 -1 2;
    2 6 -2 4;
    1 3 -1 2];

% Determine the rank of matrix A
rankA = rank(A);
fprintf('The rank of matrix A is: %d\n', rankA);

% Find a basis for the column space of A
[U, S, V] = svd(A);
basisColumnSpace = U(:, 1:rankA);
fprintf('A basis for the column space of A is:\n');
disp(basisColumnSpace);

% Find a basis for the null space of A
nullSpaceBasis = null(A);
fprintf('A basis for the null space of A is:\n');
disp(nullSpaceBasis);

% State the dimensions of the column space and the null space
dimColumnSpace = rankA;
dimNullSpace = size(nullSpaceBasis, 2);
fprintf('The dimension of the column space of A is: %d\n', dimColumnSpace);
fprintf('The dimension of the null space of A is: %d\n', dimNullSpace);

%% Q.3

% Define Matrix M
M = [4 -1;
    2 1];

% Determine the egienvalues and eigenvectors of M
[eigenVectors, D] = eig(M);
eigenValues = diag(D);

fprintf('The eigenvalues of matrix M are:\n');
disp(eigenValues);
fprintf('The eigenvectors of matrix M are:\n');
disp(eigenVectors);

% Plot the eigenvectors as arrows starting at the origin
hold on;
quiver(0, 0, eigenVectors(1,1), eigenVectors(2,1), 'r', 'LineWidth', 2);
quiver(0, 0, eigenVectors(1,2), eigenVectors(2,2), 'b', 'LineWidth', 2);
axis equal;
grid on;
title('Eigenvectors of Matrix M');
xlabel('X-axis');
ylabel('Y-axis');

% Apply the transformation Mx to each eigenvector and plot the
% tranformation on the same figure
transformedEigenVectors = M * eigenVectors;
quiver(0, 0, transformedEigenVectors(1,1), transformedEigenVectors(2,1), 'r--', 'LineWidth', 2);
quiver(0, 0, transformedEigenVectors(1,2), transformedEigenVectors(2,2), 'b--', 'LineWidth', 2);
%% Q.4

% Establish matrix A
A = [6 2 0;
    2 3 1;
    0 1 4];

% Find all eigenValues
[V, D] = eig(A);
eigenValues = diag(D);

% Determine the 3 eigenvalues of the largest magnitude
[~, sortIndices] = sort(abs(eigenValues), 'descend');
largestMagnitudeEigenvalues = eigenValues(sortIndices(1:3));
eigenVectorsLargest = V(:, sortIndices(1:3));

fprintf('The 3 eigenvalues of the largest magnitude are:\n');
disp(largestMagnitudeEigenvalues);

fprintf('The eigenvectors corresponding to the largest magnitude eigenvalues are:\n');
disp(eigenVectorsLargest);

% Find the eigenvalues closest to 2
closestIndices = find(abs(eigenValues-2) == min(abs(eigenValues-2)));
closestEigenvalues = eigenValues(closestIndices);
eigenVectorsClosest = V(:, closestIndices);

fprintf('The eigenvalues closest to 2 are:\n');
disp(closestEigenvalues);

fprintf('The eigenvectors corresponding to the eigenvalues closest to 2 are:\n');
disp(eigenVectorsClosest);

% Find the smallest algebraic (most negative) eigenvalue
[smallestEigenvalue, smallestIndex] = min(eigenValues);
eigenVectorsSmallest = V(:, smallestIndex);

fprintf('The smallest algebraic (most negative) eigenvalue is: %f\n', smallestEigenvalue);

fprintf('The eigenvector corresponding to the smallest algebraic (most negative) eigenvalue is:\n');
disp(eigenVectorsSmallest);