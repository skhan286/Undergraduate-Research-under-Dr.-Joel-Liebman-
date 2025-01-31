% Define symbolic variables
syms r s t;

% Define matrix A for Example 4
A4 = [0, r, r, r, s, 0, 0, 0;
      r, 0, r, r, 0, s, 0, 0;
      r, r, 0, r, 0, 0, s, 0;
      r, r, r, 0, 0, 0, 0, s;
      s, 0, 0, 0, t, 0, 0, 0;
      0, s, 0, 0, 0, t, 0, 0;
      0, 0, s, 0, 0, 0, t, 0;
      0, 0, 0, s, 0, 0, 0, t];

% Find eigenvalues and eigenvectors
[eigenvecs4, eigenvals4] = eig(A4);

% Display results
disp('Eigenvalues of Example 4 (symbolic):');
disp(eigenvals4);