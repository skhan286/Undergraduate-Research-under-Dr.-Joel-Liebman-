% Case a) A11 = A22 = A33 = A44 = 1
r = 1;
s = 1;
t = 1;
q = 1;
A1 = [q, r, s, t, 0, 0, 0, 0;
      r, q, t, s, 0, 0, 0, 0;
      s, t, q, r, 0, 0, 0, 0;
      t, s, r, q, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0;
      0, 0, 0, 0, 0, 0, 0, 0];
[eigvec1, eigval1] = eig(A1);

% Display eigenvalues and eigenvectors for each case
disp('Eigenvalues and eigenvectors for Case a):');
disp(eigval1);
disp(eigvec1);