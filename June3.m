% Define the matrices
A1 = [0, 1, 0, 0;
      1, 0, 1, 0;
      0, 1, 0, 1;
      0, 0, 1, 0];

A2 = [0, 1, 0, 1;
      1, 0, 1, 0;
      0, 1, 0, 1;
      1, 0, 1, 0];

A3 = [0.1, 1, 0, 1;
      1, 0, 1, 0;
      0, 1, 0, 1;
      1, 0, 1, 0];

A4 = [-0.1, 1, 0, 1;
      1, 0, 1, 0;
      0, 1, 0, 1;
      1, 0, 1, 0];

% Compute eigenvalues and eigenvectors
[eigenvectors_A1, eigenvalues_A1] = eig(A1);
[eigenvectors_A2, eigenvalues_A2] = eig(A2);
[eigenvectors_A3, eigenvalues_A3] = eig(A3);
[eigenvectors_A4, eigenvalues_A4] = eig(A4);

% Display results for Matrix 1
disp('Matrix A1:');
disp(A1);
disp('Eigenvalues:');
disp(diag(eigenvalues_A1));
disp('Eigenvectors:');
disp(eigenvectors_A1);

% Display results for Matrix 2
disp('Matrix A2:');
disp(A2);
disp('Eigenvalues:');
disp(diag(eigenvalues_A2));
disp('Eigenvectors:');
disp(eigenvectors_A2);

% Display results for Matrix 3
disp('Matrix A3:');
disp(A3);
disp('Eigenvalues:');
disp(diag(eigenvalues_A3));
disp('Eigenvectors:');
disp(eigenvectors_A3);

% Display results for Matrix 4
disp('Matrix A4:');
disp(A4);
disp('Eigenvalues:');
disp(diag(eigenvalues_A4));
disp('Eigenvectors:');
disp(eigenvectors_A4);
