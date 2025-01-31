% Define the matrix
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

% Calculate eigenvalues and eigenvectors for matrix_2
[eigenvectors_2, eigenvalues_2] = eig(matrix_2);
eigenvalues_2 = diag(eigenvalues_2);

% Display results for matrix_2
disp('Eigenvalues of matrix_2:');
disp(eigenvalues_2);

disp('Eigenvectors of matrix_2:');
disp(eigenvectors_2);

% Define the adjacency matrix
A2 = [
    0.01 1 1 1 1 0 0 0;
    1 0.01 1 1 0 1 0 0;
    1 1 -0.01 1 0 0 1 0;
    1 1 1 -0.01 0 0 0 1;
    1 0 0 0 0 0 0 0;
    0 1 0 0 0 0 0 0;
    0 0 1 0 0 0 0 0;
    0 0 0 1 0 0 0 0
];

% Create graph from adjacency matrix
G2 = graph(A2);

% Plot graphs
figure;
subplot(1, 2, 2);
plot(G2, 'Layout', 'force', 'NodeLabel', {}); % Plot graph G2
title('Graph for Matrix A2');
