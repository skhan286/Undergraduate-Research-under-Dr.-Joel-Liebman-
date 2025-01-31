% Tetrahedron adjacency matrix
A_tetrahedron = [
    0 1 1 1;
    1 0 1 1;
    1 1 0 1;
    1 1 1 0;
];

% Display the tetrahedron adjacency matrix
disp('Tetrahedron adjacency matrix:');
disp(A_tetrahedron);

% Compute eigenvalues and eigenvectors for the tetrahedron
[eigVecs_tetrahedron, eigVals_tetrahedron] = eig(A_tetrahedron);

% Display eigenvalues and eigenvectors for the tetrahedron
disp('Eigenvalues of tetrahedron adjacency matrix:');
disp(diag(eigVals_tetrahedron));
disp('Eigenvectors of tetrahedron adjacency matrix:');
disp(eigVecs_tetrahedron);

% Cube adjacency matrix
A_cube = [
    0 1 1 0 1 0 0 0;
    1 0 1 1 0 1 0 0;
    1 1 0 1 0 0 1 0;
    0 1 1 0 0 0 1 1;
    1 0 0 0 0 1 1 1;
    0 1 0 0 1 0 1 1;
    0 0 1 1 1 1 0 0;
    0 0 0 1 1 1 0 0;
];

% Display the cube adjacency matrix
disp('Cube adjacency matrix:');
disp(A_cube);

% Compute eigenvalues and eigenvectors for the cube
[eigVecs_cube, eigVals_cube] = eig(A_cube);

% Display eigenvalues and eigenvectors for the cube
disp('Eigenvalues of cube adjacency matrix:');
disp(diag(eigVals_cube));
disp('Eigenvectors of cube adjacency matrix:');
disp(eigVecs_cube);