% Define the 4x4 matrix with the given values
A = zeros(8, 8); % Create an 8x8 matrix of zeros

% Assign the given values to the matrix
A(1, 5) = 1.015; A(5, 1) = 1.015; % A15 = A51 = 1.015
A(2, 6) = 1.005; A(6, 2) = 1.005; % A26 = A62 = 1.005
A(3, 7) = 0.995; A(7, 3) = 0.995; % A37 = A73 = 0.995
A(4, 8) = 0.985; A(8, 4) = 0.985; % A48 = A84 = 0.985
A(5, 5) = 0.985; % A55 = 0.985
A(6, 6) = 0.995; % A66 = 0.995
A(7, 7) = 1.005; % A77 = 1.005
A(8, 8) = 1.015; % A88 = 1.015

% Display the matrix
disp('Matrix A:');
disp(A);

% Calculate the eigenvalues and eigenvectors
[eigenvectors, eigenvalues] = eig(A);

% Display the results
disp('Eigenvalues:');
disp(diag(eigenvalues));

disp('Eigenvectors:');
disp(eigenvectors);