% Define the original 4x4 matrix with k = 0.1
k = 0.1;
A_original = [0, 1+k, 1, 1;
              1+k, 0, 1, 1;
              1, 1, 0, 1-k;
              1, 1, 1-k, 0];

% Adjust k to 0.01 for the first new matrix
k_new1 = 0.01;
A_new1 = [0, 1+k_new1, 1, 1;
          1+k_new1, 0, 1, 1;
          1, 1, 0, 1-k_new1;
          1, 1, 1-k_new1, 0];

% Calculate eigenvalues and eigenvectors for the first new matrix
[eigVecs1, eigVals1] = eig(A_new1);
eigVals1 = diag(eigVals1);

% Display results
disp('Eigenvalues for the first new matrix (k = 0.01):');
disp(eigVals1);

disp('Eigenvectors for the first new matrix (k = 0.01):');
disp(eigVecs1);

% Plot a simple molecular structure (tetrahedron-like)
figure;
hold on;

% Coordinates for vertices of a tetrahedron (CH4 analogy)
vertices = [1, 1, 1;
           -1, -1, 1;
           -1, 1, -1;
            1, -1, -1];

% Plot the vertices as points
scatter3(vertices(:,1), vertices(:,2), vertices(:,3), 'filled', 'r');

% Define the bonds (edges connecting the vertices)
bonds = [1, 2;
         1, 3;
         1, 4;
         2, 3;
         2, 4;
         3, 4];

% Plot the bonds as lines
for i = 1:size(bonds, 1)
    plot3(vertices(bonds(i,:),1), vertices(bonds(i,:),2), vertices(bonds(i,:),3), 'b', 'LineWidth', 2);
end

% Formatting the plot
axis equal;
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('Simple Molecular Structure (Tetrahedron Analog)');

hold off;
