%% Homework Assignment 2

%% Q.1
% Variable Vectors
k = 1:21;

% Computing 1/3^k for each k
terms = 1 ./ (3.^k);

% Summation of all terms
result_Q1 = sum(terms)

%% Q.2
% Variable Vectors
a = [1,3,5,7,9];
b = [1,4,-1,3,9];

% Calculating (a*b^3)/(a+2b)
numerator = a .* (b.^3);
denominator = a + (2.*b);
result_Q2 = numerator ./ denominator

%% Q.3
% Variable Vectors
r = [2,4,6,8,10];
% Creating a Matrix
M = [r;r;r]

% Creating the Submatrices

% Part A - Extract Columns 1-3
col_1 = M(:, 1);
col_2 = M(:, 2);
col_3 = M(:, 3);
matrix_3a = [col_1,col_2,col_3]

% Part B - Extract the last 2 rows
row_2 = M(2, :);
row_3 = M(3, :);
matrix_3b = [row_2;row_3]

% Part C - Create A Submatrix of rows 2-3 and columns 
matrix_3c = M(2:3, 2:4)

%% Q.4
% Variable Coefficient Matrix and Vector B
A = [1,-2,1;
    0,2,-8;
    5,0,-5];
b = [0;8;10];

% Augmented Matrix
Aug=[A,b];

% RREF & Pivot Columns
disp('result_Q4:')
[R, pivot_cols] = rref(Aug)

%% Q.5
% Variable Vectors
col_1 = [3;2;1;0;-1];
col_2 = [-2;0;2;4;6];
col_3 = [-2;1;4;7;10];

% Calculation
result_Q5 = (3*col_1)+((1.5^2)*col_2)-(sqrt(3)*col_3)

%% Q.6
% Part A - Variable Coefficient Matrix and Vector B
A = [1,2,-1;
    3,-1,2;
    2,1,1;];
matrix_6a = A
b = [4;1;5];
vector_6a = b

% Part B -Augmented Matrix
Aug = [A,b];
matrix_6b = Aug

% RREF & Pivot Columns
disp('result_6b:')
[R, pivot_cols] = rref(Aug)

% Part C - Find the direct solution
result_6c = R(:, end)
result_verification = A\b;

% Part D - What type of solution does the system have?
disp('result_6d: This system has unique solutions!')

% Part E - Write the linear-combination form of the system
% Extracting columns of A for the linear combination form
A1 = A(:, 1);
A2 = A(:, 2);
A3 = A(:, 3);
% Print the equation
fprintf('x1 * [%d; %d; %d] + x2 * [%d; %d; %d] + x3 * [%d; %d; %d] = [%d; %d; %d]\n', ...
    A1(1), A1(2), A1(3), ...
    A2(1), A2(2), A2(3), ...
    A3(1), A3(2), A3(3), ...
    b(1), b(2), b(3))


%% Q.7
% Variable Coefficient Matrix and Vector B
A = [-2,1,0,0;
    1,-2,1,0;
    0,1,-2,1;
    0,0,1,-2];
% Defining (pi/4)^2 as a variable
p = (pi/4)^2;
b = [p*tan(0);
    p*tan(pi/3);
    p*tan((2*pi)/3);
    p*tan(pi)];

% Augmented Matrix
Aug=[A,b];

% RREF & Pivot Columns
[R, pivot_cols] = rref(Aug);
result_Q7 = R(:, end)
result_verification = A\b;

%% Q.8
% Variable Coefficient Matrix and Vector B
A = [1,0,5;
    -2,2,6;
    0,4,8];
b = [2;-1;6];

% Augmented Matrix
Aug=[A,b];

% RREF & Pivot Columns
[R, pivot_cols] = rref(Aug);
result = R(:, end);
result_verification = A\b;
result_Q8_c1 = 2.0000
result_Q8_c2 = 1.5000
result_Q8_c3 = 0

%% Q.9
% Domain
x = 0:0.1:(4*pi);

% y=sin(x)
y1 = sin(x);

% y=sin(2x)
y2 = sin(2*x);

% y=sin(3x)
y3 = sin(3*x);

% Plotting/Graphing
figure(1)

% Plots
plot(x,y1,'r-', ...
    x,y2,'b--', ...
    x,y3,'g:', 'LineWidth', 2);

% X & Y Limits
xlim([0,2*pi]);

% Title & Labels
title('Sine Functions For Q.9');
xlabel('x (radians)');
ylabel('y');
legend('y = sin(x)', 'y = sin(2x)', 'y = sin(3x)');
grid on;

%% Q.10
% Vectors
u = [4,3];
v = [-2,5];

% Part A - Calculations
sum = u + v;
diff = u - v;
prod = 2*u;

% Part B - Printing
fprintf('u+v:\t[%d, %d]\n', sum)
fprintf('u-v:\t[%d, %d]\n', diff)
fprintf('2u:\t[%d, %d]\n', prod)

% Part C-E - Plotting The Vectors & Magnitudes
% Calculating Magnitudes of Each Operation
magnitudeSum = norm(sum);
magnitudeDiff = norm(diff);
magnitudeProd = norm(prod);

% Plotting/Graphing
figure(2)

% Plots
quiver(0,0,sum(1),sum(2), magnitudeSum, 'r', 'LineWidth', 2);
hold on;
quiver(0,0,diff(1),diff(2), magnitudeDiff, 'b', 'LineWidth', 2);
quiver(0,0,prod(1),prod(2), magnitudeProd, 'g', 'LineWidth', 2);
hold off;

% Title & Labels
title('Operations For Q.10');
xlabel('x');
ylabel('y');
legend('u+v', 'u-v', '2u');
grid on;
axis equal;
