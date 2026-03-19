%% Homework Assignment 1

%% Q.1
% Variables
a = sqrt(2);

% 1a
ans_1_a = 0.4*(a^4) + 3.2*(a^3) - 162.3*a - 23

% 1b
ans_1_b = ((a^3)-8) / ((3*sqrt(a^2)) + 21.5)

%% Q.2
% Variables
b = -1.2;

% 2a
ans_2_a = ((1/3)*exp(5*b)) - (3.8*(b^4))

% 2b
ans_2_b = (log(pi-8)) / ((b^2) + 3)

%% Q.3
% Variables
x = 6.05;
y = pi/3;
r = 3/2; % This isn't a given variable in the original problem but it's used as an exponent in 3a

% 3a
part_a_eq = (x^2 + y^2)^r; % The first half of the equation
part_b_eq = (x*y) / (x+y); % The second half of the equation
ans_3_a = part_a_eq + part_b_eq % Final calculation

% 3b
part_a_eq = x*sin((12/5)*y); % The first half of the equation
part_b_eq = abs(y-x); % The second half of the equation
ans_3_b = part_a_eq + part_b_eq % Final calculation

%% Q.4
% Variables
c = -1;
d = sqrt(2);
a = c * (d^3);
b = (c+a) / (c-a);
e = d/c; % This isn't a given variable in the original problem but it's used as an exponent in 4b

% 4a
ans_4_a = exp(d-b) + 5*sqrt(abs(c)) + a + (a*c)^3

% 4b
ans_4_b = 2^e + ((c*d) / (3*a))^2 - (d*c) + (a/b)

%% Q.5
% Variables
k = 0.515; % k constant (kilograms/second)
g = 9.81; % gravity (kilograms/second^2)
m = 69.37; % mass (kilograms)
t = 23; % time (seconds)

% 5a - velocity at t = 23 s
velocity_23 = sqrt((m*g)/k) * tanh(t*sqrt((k*g)/m))

% 5b - distance at t = 23 s
distance_23 = (m/k)*log(cosh(t*sqrt((k*g) / m)))

%% Q.6
row_vector_Q6 = [3, 2.505, (12/5), -23, sqrt(5), -110, cosd(25), 0.05]

%% Q.7
% Variables
a = -3*pi;
b = 13*tanh(0.25*pi);
c = 2.32^(-3);
d = factorial(6);
e = 5.13;
f = 0.00125;
g = pi/4;
column_vector_Q7 = [a;b;c;d;e;f;g]

%% Q.8
row_vector_Q8 = -2:6:556

%% Q.9
column_vector_Q9 = 45:-2.5:0

%% Q.10
column_vector_Q10 = linspace(-23,32,19)
