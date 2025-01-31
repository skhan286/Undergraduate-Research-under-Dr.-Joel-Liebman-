% Define matrix A for Example 3
A3 = [0, 1, 1, 1, 2, 0, 0, 0;
      1, 0, 1, 1, 0, 2, 0, 0;
      1, 1, 0, 1, 0, 0, 2, 0;
      1, 1, 1, 0, 0, 0, 0, 2;
      2, 0, 0, 0, 0, 0, 0, 0;
      0, 2, 0, 0, 0, 0, 0, 0;
      0, 0, 2, 0, 0, 0, 0, 0;
      0, 0, 0, 2, 0, 0, 0, 0];

% Modify A3 for Example 3 (change a88)
A3(8,8) = 3;

% Find eigenvalues and eigenvectors
[eigenvecs3, eigenvals3] = eig(A3);

% Display results
disp('Eigenvalues of Example 3:');
disp(diag(eigenvals3)');
disp('Eigenvectors of Example 3:');
disp(eigenvecs3);