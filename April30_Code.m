% Two Atoms Bonded Together

% Define constants
K = 1; % Kinetic energy
V0 = 0.5; % Potential energy

% Define Hamiltonian matrix
H = [K V0; V0 K];

% Calculate eigenvalues and eigenvectors
[eigenvectors, eigenvalues] = eig(H);

% Display results
disp('Eigenvalues and eigenvectors for two atoms bonded together:');
disp('Eigenvalues:');
disp(diag(eigenvalues)');
disp('Eigenvectors:');
disp(eigenvectors);

% Three Atoms Bonded Together (Triangle)

% Define Hamiltonian matrix
H = [K V0 0; V0 K V0; 0 V0 K];

% Calculate eigenvalues and eigenvectors
[eigenvectors, eigenvalues] = eig(H);

% Display results
disp('Eigenvalues and eigenvectors for three atoms bonded together:');
disp('Eigenvalues:');
disp(diag(eigenvalues)');
disp('Eigenvectors:');
disp(eigenvectors);

% Display chemical structure for two atoms bonded together
figure;
atom1 = [0, 0];
atom2 = [1, 0];
plot([atom1(1), atom2(1)], [atom1(2), atom2(2)], 'ro-', 'LineWidth', 2); % Bond between atoms
hold on;
plot(atom1(1), atom1(2), 'bo', 'MarkerSize', 10); % Atom 1
hold on;
plot(atom2(1), atom2(2), 'bo', 'MarkerSize', 10); % Atom 2
axis equal;
title('Chemical Structure for Two Atoms Bonded Together');
xlabel('X');
ylabel('Y');
legend('Bond', 'Atom 1', 'Atom 2');

% Three Atoms Bonded Together (Triangle)

% Define Hamiltonian matrix
H = [K V0 0; V0 K V0; 0 V0 K];

% Calculate eigenvalues and eigenvectors
[eigenvectors, eigenvalues] = eig(H);

% Display results
disp('Eigenvalues and eigenvectors for three atoms bonded together:');
disp('Eigenvalues:');
disp(diag(eigenvalues)');
disp('Eigenvectors:');
disp(eigenvectors);

% Display chemical structure for three atoms bonded together
figure;
atom1 = [0, 0];
atom2 = [1, 0];
atom3 = [0.5, sqrt(3)/2];
plot([atom1(1), atom2(1)], [atom1(2), atom2(2)], 'ro-', 'LineWidth', 2); % Bond between atoms 1 and 2
hold on;
plot([atom2(1), atom3(1)], [atom2(2), atom3(2)], 'ro-', 'LineWidth', 2); % Bond between atoms 2 and 3
hold on;
plot([atom3(1), atom1(1)], [atom3(2), atom1(2)], 'ro-', 'LineWidth', 2); % Bond between atoms 3 and 1
hold on;
plot(atom1(1), atom1(2), 'bo', 'MarkerSize', 10); % Atom 1
hold on;
plot(atom2(1), atom2(2), 'bo', 'MarkerSize', 10); % Atom 2
hold on;
plot(atom3(1), atom3(2), 'bo', 'MarkerSize', 10); % Atom 3
axis equal;
title('Chemical Structure for Three Atoms Bonded Together (Triangle)');
xlabel('X');
ylabel('Y');
legend('Bond 1-2', 'Bond 2-3', 'Bond 3-1', 'Atom 1', 'Atom 2', 'Atom 3');