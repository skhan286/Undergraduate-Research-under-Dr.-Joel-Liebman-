% Original Matrix A
A = [0, 1, 1, 1, 2, 0, 0, 0;
     1, 0, 1, 1, 0, 2, 0, 0;
     1, 1, 0, 1, 0, 0, 2, 0;
     1, 1, 1, 0, 0, 0, 0, 2;
     2, 0, 0, 0, 0, 0, 0, 0;
     0, 2, 0, 0, 0, 0, 0, 0;
     0, 0, 2, 0, 0, 0, 0, 0;
     0, 0, 0, 2, 0, 0, 0, 0];

% Create graph object
G = graph(A);

% Plot the graph
figure;
subplot(1, 3, 2);
plot(G);
title('Graph of Matrix A');

% Calculate sum of diagonal entries
sum_diag = sum(diag(A));
disp(['Sum of diagonal entries (sum(Mii)): ' num2str(sum_diag)]);

% Find eigenvalues and eigenvectors of A
[V, D] = eig(A);
eigenvalues = diag(D);

disp('Eigenvalues of A:');
disp(eigenvalues);

% Display the eigenvectors
disp('Eigenvectors of A:');
disp(V);

% Find the maximum positive eigenvalue and minimum (most negative) eigenvalue
max_eigenvalue = max(eigenvalues);
min_eigenvalue = min(eigenvalues);
disp(['Maximum eigenvalue: ' num2str(max_eigenvalue)]);
disp(['Minimum eigenvalue: ' num2str(min_eigenvalue)]);