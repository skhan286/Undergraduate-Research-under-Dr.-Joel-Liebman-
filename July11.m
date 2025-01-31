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
disp('Matrix 1 Eigenvectors (column vectors):');
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
disp('Matrix 2 Eigenvectors (column vectors):');
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

disp('Matrix 3 Structure (Density of Non-Zero Elements):');
disp(structure_A3);

% Create graph object
G3 = graph(A3);

% Plot the graph
figure;
subplot(1, 3, 3);
plot(G3);
title('Graph of Matrix 3');
