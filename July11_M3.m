% Matrix 3
A3 = [0, 1, 1, 1, 2.001, 0, 0, 0;
      1, 0, 1, 1, 0, 2.001, 0, 0;
      1, 1, 0, 1, 0, 0, 1.999, 0;
      1, 1, 1, 0, 0, 0, 0, 1.999;
      2.001, 0, 0, 0, 0, 0, 0, 0;
      0, 2.001, 0, 0, 0, 0, 0, 0;
      0, 0, 1.999, 0, 0, 0, 0, 0;
      0, 0, 0, 1.999, 0, 0, 0, 0];

% Eigenvalues and Eigenvectors for Matrix 3
[V3, D3] = eig(A3);
eigenvalues3 = diag(D3);
eigenvectors3 = V3;

% Display Results
disp('Matrix 3 Eigenvalues:');
disp(eigenvalues3);
disp('Matrix 3 Eigenvectors (column vectors):');
disp(eigenvectors3);

% Structures of the matrix
structure_A3 = nnz(A3) / numel(A3);

% Create graph object
G3 = graph(A3);

% Plot the graph
figure;
subplot(1, 3, 3);
plot(G3);
title('Graph of Matrix 3');