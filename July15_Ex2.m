% Define matrix A for Example 2
A2 = [0, 1, 1, 1, 2, 0, 0, 0;
      1, 0, 1, 1, 0, 2, 0, 0;
      1, 1, 0, 1, 0, 0, 2, 0;
      1, 1, 1, 0, 0, 0, 0, 2;
      2, 0, 0, 0, 0, 0, 0, 0;
      0, 2, 0, 0, 0, 0, 0, 0;
      0, 0, 2, 0, 0, 0, 0, 0;
      0, 0, 0, 2, 0, 0, 0, 0];

% Modify A2 for Example 2 (change a88)
A2(8,8) = 1;

% Find eigenvalues and eigenvectors
[eigenvecs2, eigenvals2] = eig(A2);

% Display results
disp('Eigenvalues of Example 2:');
disp(diag(eigenvals2)');
disp('Eigenvectors of Example 2:');
disp(eigenvecs2);