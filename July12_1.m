% Define the eigenvectors v and w
v = [0.4483, 0.4483, 0.4461, 0.4461, 0.2253, 0.2253, 0.2219, 0.2219];
w = [0.4355, -0.4355, 0.0000, -0.0000, 0.5571, -0.5571, -0.0000, 0.0000];

% Normalization check for eigenvector v
v_norm_squared = sum(v.^2);
disp(['Sum of squares of entries in v: ', num2str(v_norm_squared)]);

% Orthogonality check for eigenvectors v and w
dot_product_vw = sum(v .* w);
disp(['Dot product of v and w: ', num2str(dot_product_vw)]);

% Define your matrix A here
A = [1 2 3 4 5 6 7 8; 
     2 1 4 3 6 5 8 7; 
     3 4 1 2 7 8 5 6; 
     4 3 2 1 8 7 6 5; 
     5 6 7 8 1 2 3 4; 
     6 5 8 7 2 1 4 3; 
     7 8 5 6 3 4 1 2; 
     8 7 6 5 4 3 2 1]; 

% Create graph object
G = graph(A);

% Plot the graph
figure;
subplot(1, 3, 2);
plot(G);
title('Graph of Matrix A');

% Calculate eigenvalues and eigenvectors
[V, D] = eig(A); % V contains eigenvectors, D contains eigenvalues

% Display eigenvalues and eigenvectors
disp('Eigenvalues:');
disp(diag(D));

disp('Eigenvectors:');
disp(V);

% Check orthogonality of eigenvectors
n = size(V, 2);
for i = 1:n
    for j = 1:n
        if i ~= j
            dot_product = sum(V(:,i) .* V(:,j));
            fprintf('Dot product of eigenvector %d and %d: %f\n', i, j, dot_product);
        end
    end
end