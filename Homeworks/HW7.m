%% Homework Assignment 7
% Housekeeping
clear;
clc;

%% Q.1
B = [2 1 0;
    1 3 1;
    0 1 2];

% Find the eigenvalues of B
eigenvalues = eig(B)

% Compute the sum of the eigenvalues
sumEigenvalues = sum(eigenvalues)

% Find the trace of B
traceB = trace(B)

% Compare sum and trace
isEqual = isequal(sumEigenvalues, traceB)

% Compute the product of the eigenvalues
productEigenvalues = prod(eigenvalues)

% Calculate the determinant of B
detB = det(B)

% Compare the product and the determinant
isProductEqualDet = isequal(productEigenvalues, detB)

%% Q.2
A= [3 1 0;
    1 2 1;
    0 1 2];

% Initial vector
v = [1;1;1]

% Repeat the following for 3 iterations
for i = 1:3
    w = A * v;
    lamda = norm(w)
    v = w / lamda;
end

% Print approximate eigenvalue and eigenvector that results from the 3rd
% iteration
fprintf('Approximate eigenvalue: %.4f\n', lamda);
fprintf('Approximate eigenvector: [%.4f; %.4f; %.4f]\n', v);

% Compare using eig(A) and print the largest eigenvalue for comparison
eigenvaluesA = eig(A)
largestEigenvalue = max(eigenvaluesA);
fprintf('Largest eigenvalue from eig(A): %.4f\n', largestEigenvalue);

%% Q.3
% 2-City Matrix Model
A = [0.7 0.2;
    0.3 0.8];
% Moving vector
x_0 = [10; 20];

% Compute x_1 through x_10
X_all = zeros(2, 11); % Preallocate matrix to store iterations
X_all(:, 1) = x_0'; % Store initial vector

% Initialize the moving vector for iterations
x = x_0;

% Compute x_2 through x_10 using a loop
for k = 1:10
    x = A * x; % Update the moving vector
    X_all(:, k+1) = x; % Store the current iteration
    fprintf('x_%d =\n', k);
    disp(x);
end

% Plot both city populations versus x_k on the same figure
figure;
k_steps = 0:10;
plot(k_steps, X_all(1, :), '-o', 'DisplayName', 'City 1 Population');
hold on;
plot(k_steps, X_all(2, :), '-o', 'DisplayName', 'City 2 Population');
xlabel('Step # (k)');
ylabel('Population (thousands)');
title('City Populations Over Iterations');
legend show;
grid on;

%% Q.4
u = [4;1;2];
v = [2;-1;1];

% Compute the dot product of vectors u and v
dotProduct = dot(u, v);

% Compute the projection of u onto v
projection = (dotProduct / dot(v, v)) * v;

% Compute the error vector
e = u - projection;

% Compute e dot v to verify orthogonality
errorDotProduct = dot(e, v);

% Display results for Q.4
fprintf('Dot product of u and v: %.4f\n', dotProduct);
fprintf('Projection of u onto v: [%.4f; %.4f; %.4f]\n', projection);
fprintf('Error vector e: [%.4f; %.4f; %.4f]\n', e);
fprintf('Dot product of error vector e and v: %.4f\n', errorDotProduct);