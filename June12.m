% 4x4 Tetrahedron
A_4x4 = [
    0 1 1 1;
    1 0 1 1;
    1 1 0 1;
    1 1 1 0
];
disp('4x4 Tetrahedron Adjacency Matrix:');
disp(A_4x4);

% Plotting the 4x4 Tetrahedron
figure;
g_4x4 = graph(A_4x4);
plot(g_4x4, 'Layout', 'force');
title('4x4 Tetrahedron');

% 5x5 Enhanced Tetrahedron
A_5x5 = [
    0 1 1 1 1;
    1 0 1 1 1;
    1 1 0 1 1;
    1 1 1 0 1;
    1 1 1 1 0
];
disp('5x5 Enhanced Tetrahedron Adjacency Matrix:');
disp(A_5x5);

% Plotting the 5x5 Enhanced Tetrahedron
figure;
g_5x5 = graph(A_5x5);
plot(g_5x5, 'Layout', 'force');
title('5x5 Enhanced Tetrahedron');

% 9x9 Even More Enhanced Tetrahedron
A_9x9 = [
    0 1 1 1 1 0 0 0 0;
    1 0 1 1 1 0 0 0 0;
    1 1 0 1 1 0 0 0 0;
    1 1 1 0 1 0 0 0 0;
    1 1 1 1 0 1 1 1 1;
    0 0 0 0 1 0 0 0 0;
    0 0 0 0 1 0 0 0 0;
    0 0 0 0 1 0 0 0 0;
    0 0 0 0 1 0 0 0 0;
];
disp('9x9 Even More Enhanced Tetrahedron Adjacency Matrix:');
disp(A_9x9);

% Plotting the 9x9 Even More Enhanced Tetrahedron
figure;
g_9x9 = graph(A_9x9);
plot(g_9x9, 'Layout', 'force');
title('9x9 Even More Enhanced Tetrahedron');