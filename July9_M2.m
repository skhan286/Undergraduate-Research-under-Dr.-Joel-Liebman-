% Matrix 2
A2 = [0, 1, 1, 1, 2.01, 0, 0, 0;
      1, 0, 1, 1, 0, 2.01, 0, 0;
      1, 1, 0, 1, 0, 0, 1.99, 0;
      1, 1, 1, 0, 0, 0, 0, 1.99;
      2.01, 0, 0, 0, 0, 0, 0, 0;
      0, 2.01, 0, 0, 0, 0, 0, 0;
      0, 0, 1.99, 0, 0, 0, 0, 0;
      0, 0, 0, 1.99, 0, 0, 0, 0];

% Eigenvalues and Eigenvectors for Matrix 2
[V2, D2] = eig(A2);
eigenvalues2 = diag(D2);
eigenvectors2 = V2;

% Display Results
disp('Matrix 2 Eigenvalues:');
disp(eigenvalues2);
disp('Matrix 2 Eigenvectors:');
disp(eigenvectors2);

% Structures of the matrix
structure_A2 = nnz(A2) / numel(A2);

% Create graph object
G2 = graph(A2);

% Plot the graph
figure;
subplot(1, 3, 2);
plot(G2);
title('Graph of Matrix 2');