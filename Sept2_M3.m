% Define the block matrix form for the 8x8 matrix
A_8x8 = [A_new1, zeros(4); zeros(4), A_new2];
A_8x8(4, 5) = 1; % Connect vertex 4 of the first tetrahedron to vertex 5 of the second
A_8x8(5, 4) = 1;

% Calculate eigenvalues and eigenvectors for the 8x8 matrix
[eigVecs_8x8, eigVals_8x8] = eig(A_8x8);
eigVals_8x8 = diag(eigVals_8x8);

% Display results
disp('Eigenvalues for the 8x8 matrix:');
disp(eigVals_8x8);

disp('Eigenvectors for the 8x8 matrix:');
disp(eigVecs_8x8);

% Plot the connected tetrahedra structure for the 8x8 matrix
figure;
hold on;

% Coordinates for vertices of the first tetrahedron (CH4 analogy)
vertices1 = [1, 1, 1;
           -1, -1, 1;
           -1, 1, -1;
            1, -1, -1];

% Coordinates for vertices of the second tetrahedron (shifted for better visualization)
vertices2 = vertices1 + 3; % Shift second tetrahedron by 3 units in each direction

% Plot the vertices as points
scatter3(vertices1(:,1), vertices1(:,2), vertices1(:,3), 'filled', 'r');
scatter3(vertices2(:,1), vertices2(:,2), vertices2(:,3), 'filled', 'g');

% Define the bonds (edges connecting the vertices) for the first tetrahedron
bonds1 = [1, 2;
         1, 3;
         1, 4;
         2, 3;
         2, 4;
         3, 4];

% Plot the bonds for the first tetrahedron
for i = 1:size(bonds1, 1)
    plot3(vertices1(bonds1(i,:),1), vertices1(bonds1(i,:),2), vertices1(bonds1(i,:),3), 'b', 'LineWidth', 2);
end

% Define the bonds (edges connecting the vertices) for the second tetrahedron
bonds2 = [1, 2;
         1, 3;
         1, 4;
         2, 3;
         2, 4;
         3, 4];

% Plot the bonds for the second tetrahedron
for i = 1:size(bonds2, 1)
    plot3(vertices2(bonds2(i,:),1), vertices2(bonds2(i,:),2), vertices2(bonds2(i,:),3), 'm', 'LineWidth', 2);
end

% Connect vertex 4 of the first tetrahedron to vertex 5 of the second tetrahedron
plot3([vertices1(4,1), vertices2(1,1)], [vertices1(4,2), vertices2(1,2)], [vertices1(4,3), vertices2(1,3)], 'k', 'LineWidth', 2);

% Formatting the plot
axis equal;
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('Connected Tetrahedra Structure (8x8 Matrix)');

hold off;
