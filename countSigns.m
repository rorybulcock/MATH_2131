%% Project 2 - countSigns() function

function [n_pos, n_neg, n_zero] = countSigns(A)

n_pos=0;
n_neg=0;
n_zero=0;

for i=1:size(A,1)
    for j=1:size(A,2)
        if A(i,j)>0
            n_pos = n_pos+1;
        elseif A(i,j)<0
            n_neg = n_neg+1;
        else
            n_zero = n_zero+1;
        end
    end
end

fprintf("Total Positive elements: %d\n", n_pos);
fprintf("Total Negative elements: %d\n", n_neg);
fprintf("Total Zero elements: %d\n", n_zero);

end