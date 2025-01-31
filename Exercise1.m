% Define the 8x8 matrix
A = [0 1
     1 0 ];

% Compute eigenvalues and eigenvectors
[V, D] = eig(A);

% Extract eigenvalues from the diagonal matrix D
eigenvalues = diag(D);

% Display eigenvalues and eigenvectors
disp('Eigenvalues:');
disp(eigenvalues);

disp('Eigenvectors:');
disp(V);