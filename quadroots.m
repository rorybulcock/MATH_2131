%% Project 2 - quadroots() function

function quadroots(a, b, c)
% Calculate the discriminant
discrim = b^2 - 4*a*c;

% Determine if discriminant is +,-, or 0
if discrim > 0
    fprintf("The discriminant is positive: %.2f\n", discrim)
elseif discrim < 0
    fprintf("The discriminant is negative: %.2f\n", discrim)
elseif discrim == 0
    fprintf("The discriminant is equal to 0.\n")
end

% Determine the roots of the function, if any, and if they are real or
% imaginary.
if discrim > 0
    root1 = (-b + sqrt(discrim)) / (2*a);
    root2 = (-b - sqrt(discrim)) / (2*a);
    fprintf("The roots are real and distinct: %.2f and %.2f\n", root1, root2);
elseif discrim == 0
    root = -b / (2*a);
    fprintf("The roots are real and equal: %.2f\n", root);
else
    realPart = -b / (2*a);
    imagPart = sqrt(-discrim) / (2*a);
    fprintf("The roots are imaginary: %.2f + %.2fi and %.2f - %.2fi\n", realPart, imagPart, realPart, imagPart);
end

end