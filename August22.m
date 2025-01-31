% Define the matrix for a single tetrahedron
k = 0.1; % Example value for k
A = [0, 1+k, 1, 1;
     1+k, 0, 1, 1;
     1, 1, 0, 1-k;
     1, 1, 1-k, 0];

% Define the vertices of a single tetrahedron
vertices1 = [0, 0, 0;
             1, 0, 0;
             0.5, sqrt(3)/2, 0;
             0.5, sqrt(3)/6, sqrt(2)/sqrt(3)];
         
vertices2 = vertices1 + [2, 0, 0]; % Shift the second tetrahedron for visibility

% Plot the first tetrahedron
figure;
hold on;
plot_tetrahedron(vertices1, 'b', 1);
plot_tetrahedron(vertices2, 'r', 5); % Start numbering from 5 for the second tetrahedron

% Define the connection between the tetrahedra (vertex 4 of first, vertex 5 of second)
plot3([vertices1(4,1), vertices2(1,1)], [vertices1(4,2), vertices2(1,2)], [vertices1(4,3), vertices2(1,3)], 'k', 'LineWidth', 2);

% Set plot properties
axis equal;
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('Connected Tetrahedra with Numbered Vertices');
grid on;
hold off;

% Now, create the matrix for the connected tetrahedra
% Expand the 4x4 matrix to an 8x8 matrix for two connected tetrahedra
B = zeros(8,8);
B(1:4, 1:4) = A; % First tetrahedron
B(5:8, 5:8) = A; % Second tetrahedron (you may modify as necessary)

% Adding connections between the two tetrahedra
B(4, 5) = 1; % Example connection
B(5, 4) = 1; % Symmetric connection

% Display the matrix for two connected tetrahedra
disp('Matrix for two connected tetrahedra:');
disp(B);

% Calculate the eigenvalues and eigenvectors for the connected tetrahedra
[eigenvectors_B, eigenvalues_B] = eig(B);
disp('Eigenvalues for connected tetrahedra:');
disp(diag(eigenvalues_B));
disp('Eigenvectors for connected tetrahedra:');
disp(eigenvectors_B);

% Function to plot a tetrahedron and number the vertices
function plot_tetrahedron(vertices, color, start_num)
    % Define edges of the tetrahedron
    edges = [1 2; 1 3; 1 4; 2 3; 2 4; 3 4];
    
    % Plot the edges
    for i = 1:size(edges, 1)
        plot3([vertices(edges(i, 1), 1), vertices(edges(i, 2), 1)], ...
              [vertices(edges(i, 1), 2), vertices(edges(i, 2), 2)], ...
              [vertices(edges(i, 1), 3), vertices(edges(i, 2), 3)], color, 'LineWidth', 2);
    end
    
    % Plot and number the vertices
    for i = 1:size(vertices, 1)
        plot3(vertices(i,1), vertices(i,2), vertices(i,3), 'ko', 'MarkerFaceColor', color);
        text(vertices(i,1), vertices(i,2), vertices(i,3), num2str(start_num + i - 1), 'FontSize', 12, 'FontWeight', 'bold', 'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');
    end
end
