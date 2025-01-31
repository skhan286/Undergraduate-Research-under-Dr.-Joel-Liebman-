% Original Matrix 2
matrix_2 = [
    0.01, 1, 1, 1, 1, 0, 0, 0;
    1, 0.01, 1, 1, 0, 1, 0, 0;
    1, 1, -0.01, 1, 0, 0, 1, 0;
    1, 1, 1, -0.01, 0, 0, 0, 1;
    1, 0, 0, 0, 0, 0, 0, 0;
    0, 1, 0, 0, 0, 0, 0, 0;
    0, 0, 1, 0, 0, 0, 0, 0;
    0, 0, 0, 1, 0, 0, 0, 0
];

% Define new diagonal values (example: small positive, large positive, small negative, large negative)
new_values = [0.1, 10, -0.1, -10];

% Create a figure to display all plots
figure;

% Iterate over new values for both matrices
for idx = 1:length(new_values)
    new_val = new_values(idx);
    
    % Matrix 2
    [eigenvalues_2, eigenvectors_2, G2_mod] = modify_and_compute(matrix_2, new_val);
    
    % Display results for Matrix 2
    subplot(2, 2, idx); % Create subplot for each matrix
    plot(G2_mod, 'Layout', 'force', 'NodeLabel', {});
    title(['Graph for Matrix 2 with Diagonal ', num2str(new_val)]);
    
    % Print eigenvalues and eigenvectors for Matrix 2
    fprintf('Matrix 2 - New diagonal value: %f\n', new_val);
    disp('Eigenvalues:');
    disp(eigenvalues_2);
    disp('Eigenvectors:');
    disp(eigenvectors_2);
end

% Function to modify matrix and compute eigenvalues and eigenvectors
function [eigenvalues, eigenvectors, G] = modify_and_compute(matrix, new_val)
    matrix_mod = matrix;
    matrix_mod(5, 5) = new_val;
    matrix_mod(6, 6) = new_val;
    matrix_mod(7, 7) = new_val;
    matrix_mod(8, 8) = new_val;
    [eigenvectors, eigenvalues] = eig(matrix_mod);
    eigenvalues = diag(eigenvalues);
    G = graph(matrix_mod);
end