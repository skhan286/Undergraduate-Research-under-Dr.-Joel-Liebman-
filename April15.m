% Define the matrix
b = 2;
a = 3;
A = [0, b; b, a];

% Find eigenvalues and eigenvectors
[V, D] = eig(A);

% Display results
disp('Eigenvalues:');
disp(diag(D)');
disp('Eigenvectors:');
disp(V);

% Display chemical structure
figure;
H = [0, 0];
O = [2, 0];
C = [1, 1.5];
plot([H(1), O(1)], [H(2), O(2)], 'ro-', 'LineWidth', 2); % Oxygen
hold on;
plot([C(1), O(1)], [C(2), O(2)], 'ro-', 'LineWidth', 2); % Carbon
hold on;
plot([H(1), C(1)], [H(2), C(2)], 'ro-', 'LineWidth', 2); % Hydrogen
axis equal;
title('Chemical Structure');
xlabel('X');
ylabel('Y');
legend('Oxygen', 'Carbon', 'Hydrogen');