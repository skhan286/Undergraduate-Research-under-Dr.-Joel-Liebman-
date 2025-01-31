% Define the matrix
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

% Calculate eigenvalues and eigenvectors for matrix_1
[eigenvectors_1, eigenvalues_1] = eig(matrix_1);
eigenvalues_1 = diag(eigenvalues_1);

% Display results for matrix_1
disp('Eigenvalues of matrix_1:');
disp(eigenvalues_1);

disp('Eigenvectors of matrix_1:');
disp(eigenvectors_1);

% Define the adjacency matrix
A1 = [
    0 1 1 1 1 0 0 0;
    1 0 1 1 0 1 0 0;
    1 1 0 1 0 0 1 0;
    1 1 1 0 0 0 0 1;
    1 0 0 0 0 0 0 0;
    0 1 0 0 0 0 0 0;
    0 0 1 0 0 0 0 0;
    0 0 0 1 0 0 0 0
];

% Create graph from adjacency matrix
G1 = graph(A1);

% Plot graph
figure;
subplot(1, 2, 1);
plot(G1, 'Layout', 'force', 'NodeLabel', {}); % Plot graph G1
title('Graph for Matrix A1');