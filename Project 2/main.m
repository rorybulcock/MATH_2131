%% Project 2

%% Housekeeping
clear;
clc;

%% Q.1

% Testing quadroots()

% Function 1
a = 1;
b = 4;
c = 4;
fprintf("Function 1 Discriminant and Roots:\n")
quadroots(a, b, c);
fprintf("\n")

% Function 2
a = (-1*pi);
b = 1;
c = -100;
fprintf("Function 2 Discriminant and Roots:\n")
quadroots(a, b, c);
fprintf("\n")

% Function 3
a = 1;
b = 5;
c = 6;
fprintf("Function 3 Discriminant and Roots:\n")
quadroots(a, b, c);
fprintf("\n")

%% Q.2

% Testing countSigns() using matrix A

fprintf("Results for Q.2\n")
A =[1 0 -1;
    2 4 -6;
    -3 2 0]
countSigns(A);

%% Q.3
% Define Polygon
P = [0 0; 
    2 0;
    3 1;
    1.5 2.5;
    -.5 1;
    0 0];

% Close the Polygon
P_closed = [P; P(1,:)];

% Convert to Column Form
P_column = P_closed';

% Rotation with Theta=45
theta = pi/4;

% Define the rotation matrix
R = [cos(theta) -sin(theta); sin(theta) cos(theta)];
P_rotated = (R * P_column);

% Reflection across x-axis
M_reflect = [1 0; 0 -1];
P_reflected = M_reflect * P_rotated;

% Stretch by a factor of 2
stretchFactor = 2;
M_stretch = stretchFactor * eye(2);
P_stretched = M_stretch * P_rotated

% Shear by a factor of 1
shearFactor = 1;
M_shear = [1 shearFactor; 0 1];
P_sheared = M_shear * P_rotated

% Projection on the y-axis
M_proj = [0 0; 0 1];
P_projected = M_proj * P_rotated

% Plot the original and transformed polygons
figure;
hold on;
fill(P(:,1), P(:,2), 'r', 'FaceAlpha', 0.5, 'DisplayName', 'Original'); % Original Polygon
fill(P_stretched(1,:), P_stretched(2,:), 'g', 'FaceAlpha', 0.5, 'DisplayName', 'Stretched'); % Stretched Polygon
fill(P_reflected(1,:), P_reflected(2,:), 'b', 'FaceAlpha', 0.5, 'DisplayName', 'Reflected'); % Reflected Polygon
fill(P_sheared(1,:), P_sheared(2,:), 'm', 'FaceAlpha', 0.5, 'DisplayName', 'Sheared'); % Sheared Polygon
fill(P_projected(1,:), P_projected(2,:), 'c', 'FaceAlpha', 0.5, 'DisplayName', 'Projected'); % Projected Polygon
legend show;
title('Transformations of the Polygon');
xlabel('X-axis');
ylabel('Y-axis');
axis equal;
grid on;
hold off;

%% Q.4
A = [1 -2 0 4;
    2 -4 1 9;
    -1 2 1 -1];

% RREF
[R, pivots] = rref(A);

fprintf("RREF of A:\n");
disp(R);

fprintf("Pivot Columns:\n");
disp(pivots);

% Column Space Basis
col_basis = A(:, pivots);

disp('Basis for Column Space:');
disp(col_basis);

rankA = length(pivots);
fprintf('Rank(A) = %d\n', rankA);

% Null Space Basis
null_basis = null(A,'r');

disp('Basis for Null Space:');
disp(null_basis);

nullityA = size(null_basis,2);
fprintf('Nullity(A) = %d\n', nullityA);

% Verify Rank + Nullity = n
n = size(A, 2);
fprintf('rank(A) + nullity(A) = %d + %d = %d\n', rankA, nullityA, rankA + nullityA);
