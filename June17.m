% Define the 5x5 adjacency matrix with a vertex having a different number of attached bonds
A_5x5 = [
    0 1 1 1 0;
    1 0 1 1 1;
    1 1 0 1 1;
    1 1 1 0 1;
    0 1 1 1 0
];
disp('5x5 Enhanced Tetrahedron Adjacency Matrix:');
disp(A_5x5);

% Plotting the 5x5 Enhanced Tetrahedron
figure;
g_5x5 = graph(A_5x5);
plot(g_5x5, 'Layout', 'force');
title('5x5 Enhanced Tetrahedron');
