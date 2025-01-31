% Values for k
k_values = [1, 0.1, 0.001, 0.0001];

% Analyze the matrix for different values of k
for i = 1:length(k_values)
    k = k_values(i);
    [eigenvalues, eigenvectors] = analyze_matrix(k);
    
    % Display results
    fprintf('Results for k = %.4f:\n', k);
    fprintf('Eigenvalues:\n');
    disp(eigenvalues);
    fprintf('Eigenvectors:\n');
    disp(eigenvectors);
end

% Function to compute eigenvalues and eigenvectors for a given k
function [eigenvalues, eigenvectors] = analyze_matrix(k)
    A = [0, 1+k, 1, 1-k;
         1+k, 0, 1, 1-k;
         1, 1, 0, 1;
         1-k, 1-k, 1, 0];
    
    [eigenvectors, D] = eig(A);
    eigenvalues = diag(D);
end