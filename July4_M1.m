% Define the matrices
matrix_1 = [
    0, 1, 1, 1, 1, 0, 0, 0;
    1, 0, 1, 1, 0, 1, 0, 0;
    1, 1, 0, 1, 0, 0, 1, 0;
    1, 1, 1, 0, 0, 0, 0, 1;
    1, 0, 0, 0, 0, 0, 0, 0;
    0, 1, 0, 0, 0, 0, 0, 0;
    0, 0, 1, 0, 0, 0, 0, 0;
    0, 0, 0, 1, 0, 0, 0, 0
];

% Define new diagonal values (example: small positive, large positive, small negative, large negative)
new_values = [0.1, 10, -0.1, -10];

% Iterate over new values for both matrices
for new_val = new_values
    % Matrix 1
    [eigenvalues_1, eigenvectors_1, G1_mod] = modify_and_compute(matrix_1, new_val);
    fprintf('Matrix 1 - New diagonal value: %f\n', new_val);
    disp('Eigenvalues:');
    disp(eigenvalues_1);
    disp('Eigenvectors:');
    disp(eigenvectors_1);
    figure;
    subplot(1, 2, 1);
    plot(G1_mod, 'Layout', 'force', 'NodeLabel', {});
    title(['Graph for Matrix 1 with Diagonal ', num2str(new_val)]);
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