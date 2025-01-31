% Define the adjacency matrix
matrix_1 = [
    0, 1, 1, 1, 2, 0, 0, 0;
    1, 0, 1, 1, 0, 3, 0, 0;
    1, 1, 0, 1, 0, 0, 4, 0;
    1, 1, 1, 0, 0, 0, 0, 5;
    2, 0, 0, 0, 0, 0, 0, 0;
    0, 3, 0, 0, 0, 0, 0, 0;
    0, 0, 4, 0, 0, 0, 0, 0;
    0, 0, 0, 5, 0, 0, 0, 0
];

% Compute eigenvalues and eigenvectors
[V, D] = eig(matrix_1);

% Extract eigenvalues from D
eigenvalues = diag(D);

% Display eigenvalues
disp('Eigenvalues:');
disp(eigenvalues);

% Display eigenvectors
disp('Eigenvectors:');
disp(V);

% Plot the graph structure based on the adjacency matrix
figure;
G = graph(matrix_1);
plot(G, 'Layout', 'force', 'EdgeLabel', G.Edges.Weight);
title('Graph Structure based on Adjacency Matrix');