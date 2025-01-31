% Define the second matrix
M2 = [
    0.01, 1, 1, 1, 1, 0, 0, 0;
    1, 0.01, 1, 1, 1, 0, 0, 0;
    1, 1, -0.01, 1, 1, 0, 0, 0;
    1, 1, 1, -0.01, 1, 0, 0, 0;
    1, 1, 1, 1, 0, 0, 0, 0;
    0, 0, 0, 0, 0, 0, 0, 0;
    0, 0, 0, 0, 0, 0, 0, 0;
    0, 0, 0, 0, 0, 0, 0, 0;
];

% Calculate eigenvalues and eigenvectors for the second matrix
[eigenvectors2, eigenvalues2] = eig(M2);

% Display matrix, eigenvalues, and eigenvectors for the second matrix
disp('Second Matrix M2:');
disp(M2);
disp('Eigenvalues for the second matrix:');
disp(diag(eigenvalues2));
disp('Eigenvectors for the second matrix:');
disp(eigenvectors2);

subplot(1,2,2);
plot(real(eigenvectors2));
title('Eigenvectors of Second Matrix M2');
xlabel('Index');
ylabel('Value');
grid on;