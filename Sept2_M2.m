% Adjust k to 0.001 for the second new matrix
k_new2 = 0.001;
A_new2 = [0, 1+k_new2, 1, 1;
          1+k_new2, 0, 1, 1;
          1, 1, 0, 1-k_new2;
          1, 1, 1-k_new2, 0];

% Calculate eigenvalues and eigenvectors for the second new matrix
[eigVecs2, eigVals2] = eig(A_new2);
eigVals2 = diag(eigVals2);

% Display results
disp('Eigenvalues for the second new matrix (k = 0.001):');
disp(eigVals2);

disp('Eigenvectors for the second new matrix (k = 0.001):');
disp(eigVecs2);

% Plot a simple molecular structure (tetrahedron-like) for the second matrix
figure;
hold on;

% Coordinates for vertices of a tetrahedron (CH4 analogy for the second structure)
vertices = [1, 1, 1;
           -1, -1, 1;
           -1, 1, -1;
            1, -1, -1];

% Plot the vertices as points
scatter3(vertices(:,1), vertices(:,2), vertices(:,3), 'filled', 'g');

% Define the bonds (edges connecting the vertices) for the second structure
bonds = [1, 2;
         1, 3;
         1, 4;
         2, 3;
         2, 4;
         3, 4];

% Plot the bonds as lines
for i = 1:size(bonds, 1)
    plot3(vertices(bonds(i,:),1), vertices(bonds(i,:),2), vertices(bonds(i,:),3), 'm', 'LineWidth', 2);
end

% Formatting the plot
axis equal;
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('Simple Molecular Structure (Tetrahedron Analog) - Second New Matrix (k = 0.001)');

hold off;
