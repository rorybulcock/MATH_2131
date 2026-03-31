%% Homework Assignment 5

%% Question 1

% Part A
disp("Q.1 Part A Answers:")
T = @(x) [3 -1; 0 2] .* x
u = [1,2]
v = [-1,3]
c = 4

% Part B
disp("Q.1 Part B Answers:")
LHS1 = T(u+v)
RHS1 = T(u) + T(v)
diff1 = norm(LHS1 - RHS1)

% Part C
disp("Q.1 Part C Answers:")
LHS2 = T(c*u)
RHS2 = c * T(u)
diff2 = norm(LHS2 - RHS2)

% Part D
disp("T is a linear transformation.")

%% Question 2

% Part A
disp("Q.2 Part A Answers:")
T = @(x) [x(1)+1; 2*x(2)]
u = [1,2]
v = [-1,3]
c = 4

% Part B
disp("Q.2 Part B Answers:")
LHS1 = T(u+v)
RHS1 = T(u) + T(v)
diff1 = norm(LHS1 - RHS1)

% Part C
disp("Q.2 Part C Answers:")
LHS2 = T(c*u)
RHS2 = c * T(u)
diff2 = norm(LHS2 - RHS2)

% Part D
disp("T is a NOT linear transformation.")

%% Question 3
% Part A & B
disp("Q.3 Parts A & B Answers:")
A = [0 1; -1 0]
v = [2; -1]

% Part C
result = A * v;

% Part D
disp("Q.3 Part D Answer:")
disp(result)

%% Question 4
% Part A & B
disp("Q.4 Parts A & B Answers:")
A = [-1 0; 0 1]
points = [3 -1 5;
        -2 4 0]
% Part C
result = A * points;

% Part D
disp("Q.4 Part D Answer:")
disp(result)

%% Question 5
% Part A & B
disp("Q.5 Parts A & B Answers:")
A = [3 0; 0 1/2]
square = [0 1 1 0 0;
        0 0 1 1 0]

% Part C
result = A * square;

% Part D
disp("Q.5 Part D Answer:")
disp(result)

plot(square(1,:), square(2,:), 'b-o', 'DisplayName', 'Original')
hold on
plot(result(1,:), result(2,:), 'r-o', 'DisplayName', 'Transformed')
legend
axis equal
grid on
title('Original vs Transformed Square')
