%% Homework Assignment 4 - plotParametric() function

% Write a function that plots the family of functions:
% f(x;a,b) = acos(x) + bsin(x)

function plotParametric(a, b, xRange)
x = linspace(xRange(1), xRange(2), 100);

hold on

for i = 1:length(a)
    for j = 1:length(b)
    y = a(i)*cos(x) + b(j)*sin(x);
    plot(x, y);
    end
end

xlabel('x');
ylabel('f(x; a, b)');
legend('a=1,b=1','a=1,b=2','a=1,b=3','a=2,b=1','a=2,b=2','a=2,b=3')
title('Parametric Function Plot');
grid on;

hold off

end