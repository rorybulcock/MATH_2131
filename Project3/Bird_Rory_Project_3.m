%% Project 3
% Housekeeping
clc;
clear;

%% Q.1

% Initialize a1, a2, a3, & a4
A = [1 2 1 0;
    1 0 2 1;
    0 1 1 2;
    1 1 0 1];

% Apply the Gram-Schmidt algorithm to construct an orthonormal set

% Combine vectors into a matrix
a1 = A(:,1);
a2 = A(:,2);
a3 = A(:,3);
a4 = A(:,4);

% u1, u2, u3, & u4
v1=a1;
u1 = v1/norm(v1);

v2 = a2 - (u1'*a2)*u1;
u2 = v2/norm(v2);

v3 = a3 - (u1'*a3)*u1 - (u2'*a3)*u2;
u3 = v3/norm(v3);

v4 = a4 - (u1'*a4)*u1 - (u2'*a4)*u2 - (u3'*a4)*u3;
u4 = v4/norm(v4);

% Q & QTQ
Q = [u1, u2, u3, u4];
QTQ = Q' * Q;

fprintf('Matrix Q (Orthonormal Vectors):\n')
disp(round(Q,4))

fprintf('Q^T*Q:\n')
disp(round(QTQ,4))

%% Q.2

% (a) load + grayscale
A = im2double(imread("project3 image.jpg"));
A = rgb2gray(A); % now A is 2-D

% (b)
function [AK, K, energy_K] = svd_truncate(A, tau)
    % full svd
    [U, S, V] = svd(A, 'econ'); 

    % singular value
    sigma = diag(S);

    % compute energy (sum of squares of singular values)
    total_energy = sum(sigma.^2);

    % cumulative energy fraction
    cumulative_energy = cumsum(sigma.^2) / total_energy;

    % find smallest K such enery >= tau
    K = find(cumulative_energy >= tau, 1);

    % truncate matrices
    UK = U(:, 1:K);
    SK = S(1:K, 1:K);
    VK = V(:, 1:K);

    % rank-K approx
    AK = UK * SK * VK';

    % achieved energy
    energy_K = cumulative_energy(K);
end

% (c) run for different threshold
taus = [0.80, 0.90, 0.99, 0.999];

results = cell(length(taus), 3); % store Ak, k, energy

for i = 1:length(taus)
    tau = taus(i);
    [Ak, k, energy_k] = svd_truncate(A, tau);

    results{i,1} = Ak;
    results{i,2} = k;
    results{i,3} = energy_k;
end

% (d) display image with subplot
for i = 1:length(taus)
    figure;

    % Original
    subplot(1,2,1);
    imshow(A);
    title('Original Image');

    % Approximation
    subplot(1,2,2);
    imshow(results{i,1});
    title(sprintf('\tau = %.3f, k = %d', taus(i), results{i,2}));
end

% (e) plot cumulative energy curve
[U, S, V] = svd(A, 'econ');
sigma = diag(S);

cumulative_energy = cumsum(sigma.^2) / sum(sigma.^2);

figure;
plot(cumulative_energy, 'LineWidth', 2);
xlabel('k (number of singular values)');
ylabel('Cumulative Energy');
title('Cumulative Energy of Singular Values');
grid on; 

%% Q.3

% Data
Temperature = [55; 60; 70; 75; 80];
HouseholdSize = [2; 3; 4; 3; 5];
Usage = [410; 450; 520; 480; 600];

% A matrix (column of ones for beta0)
A = [ones(length(Temperature),1), Temperature, HouseholdSize];

b = Usage;

% QR decomposition
[Q, R] = qr(A, 0);   % economy size

% R*beta = Q'*b
beta = R \ (Q' * b);

beta0 = beta(1);
beta1 = beta(2);
beta2 = beta(3);

disp('Regression Coefficients:');
disp(beta);

% Prediction
x_new = [1, 65, 4];
predicted_usage = x_new * beta;

disp('Predicted Usage:');
disp(predicted_usage);

% Compute R^2
b_pred = A * beta;

SS_res = sum((b - b_pred).^2);
SS_tot = sum((b - mean(b)).^2);

R2 = 1 - (SS_res / SS_tot);

disp('R^2 value:');
disp(R2);