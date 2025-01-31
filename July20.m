% Define the first modified 4x4 matrix A1
A1 = [0.5  1.01 1 1.01;
      1.01 0.5  1 1.02;
      1    1    0.5 1;
      1.01 1.02 1  0.5];

% Compute eigenvalues and eigenvectors
[eigenvectors1, eigenvalues_matrix1] = eig(A1);
eigenvalues1 = diag(eigenvalues_matrix1);

% Display the results
disp('Modified Matrix A1:');
disp(A1);
disp('Eigenvalues of A1:');
disp(eigenvalues1);
disp('Eigenvectors of A1:');
disp(eigenvectors1);
