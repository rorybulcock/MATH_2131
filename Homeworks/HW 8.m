%% Homework 8

clc;
clear;

%% Q.1

% Establish A and b
A = [3 2;
    2 5;
    4 1];
b = [15;
    23;
    18];

% What kind of linear system is this? Find the system's exact solution
% Determine the type of linear system and solve it
if rank(A) == rank([A b]) && rank(A) == size(A, 2)
    solution = A\b; % Exact solution using backslash operator
    disp('The system is consistent and has a unique solution:');
    disp(solution);
else
    % Find the least-squares solution using the normal equations
    leastSquaresSolution = (A' * A) \ (A' * b); % Least-squares solution
    disp('The system does not have a unique solution. Using least-squares solution:');
    disp(leastSquaresSolution);
    % Solve again using QR factorization
    [Q, R] = qr(A); % QR factorization
    qrSolution = R \ (Q' * b); % Solve using QR factorization
    disp('Solution using QR factorization:');
    disp(qrSolution);
end

% Compute the residual vector for both solutions
if exist('solution', 'var')
    e = b - A * solution; % Residual for the exact solution
    disp('Residual vector for the exact solution:');
    disp(e);
    verification = A' * e;
else
    eLS = b - A * leastSquaresSolution; % Residual for least-squares solution
    disp('Residual vector for the least-squares solution:');
    disp(eLS);
end

