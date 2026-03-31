%% Project 1

%% Q.1
% Establish coefficient matrix A and find the x vector
A = [2,0,-1,0,0;
    1,0,0,-1,0;
    6,4,-4,-4,-1;
    0,2,0,0,-2;
    0,1,-1,0,0];

% Finding the x vector via null
x = null(A, 'r');
% Normalize the x vector to ensure the smallest non-zero element is 1
x = x / min(abs(x(x~=0)));

% Assign normalized vector components
a = x(1);
b = x(2);
c = x(3);
d = x(4);
e = x(5);

% Display final answer
result_Q1 = [a b c d e]

%% Q.2
% Establish coefficient matrix A and the b vector
A = [1, 0, 0, 1;
    1, -1, 0, 0;
    0, 1, 1, 0;
    0, 0, 1, -1];
b = [15; 10; 25; 20];

% RREF
Aug=[A,b];
R = rref(Aug)
disp('Since the last row is all zeroes, this is linearly dependent.')
result_Q2 = R(:, end) % Extracts last column

%% Q.3
% Generate an invertible 10000 × 10000 matrix A and a random vector b. Solve the system
% Ax = b using two different approaches in Matlab

n = 10000;
fprintf('Generating %d x %d system ... \n', n, n)
A = randn(n,n);
b = randn(n,1); 

fprintf('\nSolving 2 methods ... \n\n')

% Method 1: Using x = inv(A)
tic
x1= inv(A) * b;
time1 = toc;
fprintf('Method 1 - inv(A)*b: %.4f sec\n',time1)

% Method 2: Using x = A\b
tic
x2 = A \ b;
time2 = toc;
fprintf('Method 2 - A\\b: %.4f sec\n', time2)

% Generating 10000 x 10000 system ...
%
% Solving 2 methods ...
%
% Method 1 - inv(A)*b; 73.1211 sec
% Method 2 - A\b: 23.9828 sec


%% Q.4
%  Establish coefficient matrix A and the b vector
A = [4,-1,-1,0,0,0,0,0;
    -1,4,0,-1,0,0,0,0;
    -1,0,4,-1,-1,0,0,0;
    0,-1,-1,4,0,-1,0,0;
    0,0,-1,0,4,-1,-1,0;
    0,0,0,-1,-1,4,0,-1;
    0,0,0,0,-1,0,4,-1;
    0,0,0,0,0,-1,-1,4];
b = [5; 15; 0; 10; 0; 10; 20; 30];

% Solve the system for the temperatures
x = A\b;

% Print each x value to its T
% Print the temperature values
for i = 1:length(x)
    fprintf('T(%d) = %.4f\n', i, x(i));
end


%% Q.5

% Define variables (x and approx. sin(10x) values)
x = [0; 0.2; 0.4; 0.6; 0.8; 1];
f_vals = [0; 0.9093; -0.7568; -0.2794; 0.9894; -0.5440];

% Vandermonde Matrix for 5th degree polynomial
A = [ones(size(x)), x, x.^2, x.^3, x.^4, x.^5];
disp('Coefficients a0 to a5: ');
a = A\f_vals

% Graphing
x_plot = linspace(0,1,100);
f_x = sin(10*x_plot);
p_x = a(1) + a(2)*x_plot + a(3)*x_plot.^2 + a(4)*x_plot.^3 + a(5)*x_plot.^4 + a(6)*x_plot.^5;

figure;
plot(x_plot, f_x, 'b-', 'LineWidth', 2);
hold on;
plot(x_plot, p_x, 'r--', 'LineWidth', 1.5);
plot(x,f_vals, 'ko', 'MarkerFaceColor','k');
hold off;

xlabel('x');
ylabel('f(x), p(x)');
title('Plot of f(x) = sin(10x) and Interpolating Polynomial p(x)');
legend('f(x) = sin(10x)', 'p(x)', 'Data Points', 'Location', 'Best');
grid on;
