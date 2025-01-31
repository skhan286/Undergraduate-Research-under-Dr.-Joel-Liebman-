% Define the second modified 4x4 matrix A2
A2 = [0.2  1.03 0.98 1;
      1.03 0.2  1   1.01;
      0.98 1    0.2 1.05;
      1    1.01 1.05 0.2];

% Compute eigenvalues and eigenvectors
[eigenvectors2, eigenvalues_matrix2] = eig(A2);
eigenvalues2 = diag(eigenvalues_matrix2);

% Display the results
disp('Modified Matrix A2:');
disp(A2);
disp('Eigenvalues of A2:');
disp(eigenvalues2);
disp('Eigenvectors of A2:');
disp(eigenvectors2);