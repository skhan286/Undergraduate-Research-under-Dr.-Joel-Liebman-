% Matrix 1
A1 = [0, 1, 1, 1, 2.1, 0, 0, 0;
      1, 0, 1, 1, 0, 2.1, 0, 0;
      1, 1, 0, 1, 0, 0, 1.9, 0;
      1, 1, 1, 0, 0, 0, 0, 1.9;
      2.1, 0, 0, 0, 0, 0, 0, 0;
      0, 2.1, 0, 0, 0, 0, 0, 0;
      0, 0, 1.9, 0, 0, 0, 0, 0;
      0, 0, 0, 1.9, 0, 0, 0, 0];

% Eigenvalues and Eigenvectors for Matrix 1
[V1, D1] = eig(A1);
eigenvalues1 = diag(D1);
eigenvectors1 = V1;

% Display Results
disp('Matrix 1 Eigenvalues:');
disp(eigenvalues1);
disp('Matrix 1 Eigenvectors:');
disp(eigenvectors1);

% Structures of the matrix
structure_A1 = nnz(A1) / numel(A1);

% Create graph object
G1 = graph(A1);

% Plot the graph
figure;
subplot(1, 3, 1);
plot(G1);
title('Graph of Matrix 1');