%% Homework Assignment 3

%% Q.1
% Establish given vectors
v1 = [3;-2;1];
v2 = [1;4;-2];
v3 = [2;1;3];

% Part A
result_Q1A = 2*v1 - 3*v2 + 4*v3

% Part B
% Establish given vectors as a matrix
matrix_Q1B = [v1, v2, v3];

% Define coefficient vector
c = [2;-3;4];

% Calculate the result for Part B using matrix multiplication
result_Q1B = matrix_Q1B * c

%% Q.2
% Establish the given vectors
v1 = [1;3;2];
v2 = [2;1;-1];
b = [7;13;7];

% Part A
fprintf('\nresult_Q2A\n b can be written as a linear combination of v1 and v2!')

% Part B
% Solve for coefficients c1 and c2 using the equation b = c1*v1 + c2*v2
coefficients = [v1, v2]\b;
c1 = coefficients(1);
c2 = coefficients(2);
fprintf('\n\nresult_Q2B\n The coefficients are c1 = %d and c2 = %d\n', c1, c2)

% Part C
result_Q2C = round(c1*v1,0) + round(c2*v2,0)

%% Q.3
% Establish the given vectors
v1 = [1;0;2;1];
v2 = [2;1;3;0];
v3 = [1;1;1;-1];

% Establish the Augmented Matrix
A = [v1,v2,v3];

% Part A
b1 = [4;2;7;1];
Aug = [A, b1];
result_Q3A = rref(Aug)
fprintf('The third row is [0 0 0 | 1], therefore b is NOT in the span\n')

% Part B
b2 = [0;1;-1;-2];
Aug = [A, b2];
result_Q3B = rref(Aug)
fprintf('No row is [0 0 0 | non-zero], therefore b is in the span\n\n')

%% Q.4
% Part A
% Establish given vectors
u1 = [1;2;0;1];
u2 = [2;1;3;0];
u3 = [3;0;6;-1];
u4 = [0;3;-3;1];
matrix_Q4A = [u1,u2,u3,u4];
[R, pivots] = rref(matrix_Q4A);
fprintf(['result_Q4A\n' ...
    'RREF:\n'])
disp(R)
fprintf('\nPivot columns:\n')
disp(pivots)
fprintf('\n3 pivots and 4 vectors -> Dependent\n\n')

% Part B
% Establish given vectors
v1 = [1;0;0];
v2 = [0;1;0];
v3 = [0;0;1];
matrix_Q4B = [v1,v2,v3];
[R, pivots] = rref(matrix_Q4B);
fprintf(['result_Q4B\n' ...
    'RREF:\n'])
disp(R)
fprintf('\nPivot columns:\n')
disp(pivots)
fprintf('\n3 pivots and 3 vectors -> Independent\n\n')

% Part C
% Establish given vectors
w1 = [1;2;3];
w2 = [2;4;6];
w3 = [1;0;1];
matrix_Q4C = [w1,w2,w3];
[R, pivots] = rref(matrix_Q4C);
fprintf(['result_Q4C\n' ...
    'RREF:\n'])
disp(R)
fprintf('\nPivot columns:\n')
disp(pivots)
fprintf('\n2 pivots and 3 vectors -> Dependent\n\n')