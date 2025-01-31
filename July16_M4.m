% Case d) A11 = A22 = A33 = A44 = -2
q = -2;
A4 = [q, r, s, t, 0, 0, 0, 0;
      r, q, t, s, 0, 0, 0, 0;
      s, t, q, r, 0, 0, 0, 0;
      t, s, r, q, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0];
[eigvec4, eigval4] = eig(A4);

% Display eigenvalues and eigenvectors for each case
disp('Eigenvalues and eigenvectors for Case d):');
disp(eigval4);
disp(eigvec4);