% Define the 8x8 matrix
A = [0 1 1 1 0 0 0 0;
     1 0 1 1 0 0 0 0;
     1 1 0 1 0 0 0 0;
     1 1 1 0 0 0 0 0;
     0 0 0 0 0 1 1 1;
     0 0 0 0 1 0 1 1;
     0 0 0 0 1 1 0 1;
     0 0 0 0 1 1 1 0];

% Compute eigenvalues and eigenvectors
[V, D] = eig(A);

% Extract eigenvalues from the diagonal matrix D
eigenvalues = diag(D);

% Display eigenvalues and eigenvectors
disp('Eigenvalues:');
disp(eigenvalues);

disp('Eigenvectors:');
disp(V);

% Plot the matrix
figure;
spy(A);
title('Matrix A');
xlabel('Column Index');
ylabel('Row Index');

% Plot eigenvectors
figure;
for i = 1:size(V, 2)
    subplot(3, 3, i);
    plot(V(:, i));
    title(['Eigenvector ', num2str(i)]);
end
