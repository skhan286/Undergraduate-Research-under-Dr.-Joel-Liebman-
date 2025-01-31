% Define the adjacency matrix A
A = [0 1 1 1 1 0 0 0;
     1 0 1 1 0 1 0 0;
     1 1 0 1 0 0 1 0;
     1 1 1 0 0 0 0 1;
     1 0 0 0 0 0 0 0;
     0 1 0 0 0 0 0 0;
     0 0 1 0 0 0 0 0;
     0 0 0 1 0 0 0 0];

% Compute eigenvalues and eigenvectors
[V, D] = eig(A);

% Extract eigenvalues from D (diagonal matrix)
eigenvalues = diag(D);

% Display eigenvalues
disp('Eigenvalues:');
disp(eigenvalues.');

% Create a graph from adjacency matrix A
G = graph(A);

% Plot the graph
figure;
h = plot(G, 'Layout', 'force', 'EdgeColor', 'k', 'NodeColor', 'r', 'MarkerSize', 8);
title('Visualization of the Structure');
xlabel('X');
ylabel('Y');
axis square;

% Display eigenvectors (each column of V corresponds to an eigenvector)
disp('Eigenvectors:');
disp(V);