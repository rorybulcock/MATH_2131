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

