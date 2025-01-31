% Case c) A11 = A22 = A33 = A44 = 2
q = 2;
A3 = [q, r, s, t, 0, 0, 0, 0;
      r, q, t, s, 0, 0, 0, 0;
      s, t, q, r, 0, 0, 0, 0;
      t, s, r, q, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0];
[eigvec3, eigval3] = eig(A3);

% Display eigenvalues and eigenvectors for each case
disp('Eigenvalues and eigenvectors for Case c):');
disp(eigval3);
disp(eigvec3);