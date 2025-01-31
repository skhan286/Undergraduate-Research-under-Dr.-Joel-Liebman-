% Define matrix A for Example 1
A1 = [0, 1, 1, 1, 2, 0, 0, 0;
      1, 0, 1, 1, 0, 2, 0, 0;
      1, 1, 0, 1, 0, 0, 2, 0;
      1, 1, 1, 0, 0, 0, 0, 2;
      2, 0, 0, 0, 0, 0, 0, 0;
      0, 2, 0, 0, 0, 0, 0, 0;
      0, 0, 2, 0, 0, 0, 0, 0;
      0, 0, 0, 2, 0, 0, 0, 0];

% Find eigenvalues and eigenvectors
[eigenvecs1, eigenvals1] = eig(A1);

% Display results
disp('Eigenvalues of Example 1:');
disp(diag(eigenvals1)');
disp('Eigenvectors of Example 1:');
disp(eigenvecs1);