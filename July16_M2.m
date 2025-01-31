% Case b) A11 = A22 = A33 = A44 = -1
A2 = [-q, r, s, t, 0, 0, 0, 0;
      r, -q, t, s, 0, 0, 0, 0;
      s, t, -q, r, 0, 0, 0, 0;
      t, s, r, -q, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0];
[eigvec2, eigval2] = eig(A2);

% Display eigenvalues and eigenvectors for each case
disp('Eigenvalues and eigenvectors for Case b):');
disp(eigval2);
disp(eigvec2);