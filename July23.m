% Main script

% Initialize values for k
k_values = [1, 0.1, 0.001, 0.0001];

% Iterate over the different k values
for k = k_values
    [eigValues, eigVectors] = compute_eigenvalues(k);
    
    % Normalize the eigenvectors
    for i = 1:size(eigVectors, 2)
        eigVectors(:, i) = eigVectors(:, i) / norm(eigVectors(:, i));
    end
    
    % Display the results
    fprintf('Results for k = %.4f:\n', k);
    fprintf('Eigenvalues:\n');
    disp(eigValues);
    fprintf('Eigenvectors (columns):\n');
    disp(eigVectors);
    fprintf('\n');
end

% Nested function to compute eigenvalues and eigenvectors
function [eigValues, eigVectors] = compute_eigenvalues(k)
    % Define the matrix as per the latest description
    A = [0, 1+k, 1, 1;
         1+k, 0, 1, 1;
         1, 1, 0, 1-k;
         1, 1, 1-k, 0];
     
    % Compute the eigenvalues and eigenvectors
    [eigVectors, D] = eig(A);
    eigValues = diag(D);
end
