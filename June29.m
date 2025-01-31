% Define the first matrix
M1 = [
    0.1, 1, 1, 1, 1, 0, 0, 0;
    1, 0.1, 1, 1, 1, 0, 0, 0;
    1, 1, -0.1, 1, 1, 0, 0, 0;
    1, 1, 1, -0.1, 1, 0, 0, 0;
    1, 1, 1, 1, 0, 0, 0, 0;
    0, 0, 0, 0, 0, 0, 0, 0;
    0, 0, 0, 0, 0, 0, 0, 0;
    0, 0, 0, 0, 0, 0, 0, 0;
];

% Calculate eigenvalues and eigenvectors for the first matrix
[eigenvectors1, eigenvalues1] = eig(M1);

% Display matrix, eigenvalues, and eigenvectors for the first matrix
disp('First Matrix M1:');
disp(M1);
disp('Eigenvalues for the first matrix:');
disp(diag(eigenvalues1));
disp('Eigenvectors for the first matrix:');
disp(eigenvectors1);

% Plotting the eigenvectors for better visualization
figure;
subplot(1,2,1);
plot(real(eigenvectors1));
title('Eigenvectors of First Matrix M1');
xlabel('Index');
ylabel('Value');
grid on;