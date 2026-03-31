%% Homework Assignment 4 - checkRows(A) function

% Write a function that examines each row of a matrix, A, and prints if the
% row has all positive, all negative, or mixed entries.

function checkRows(A)

for i = 1:size(A, 1)
    if all(A(i, :) > 0)
        fprintf('Row %d: All positive\n', i);
    elseif all(A(i, :) < 0)
        fprintf('Row %d: All negative\n', i);
    else
        fprintf('Row %d: Mixed entries\n', i);
    end

end
