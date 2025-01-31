% Define the basic 8x8 matrix structure
n = 8;

% Create the first matrix with diagonal elements set to 1.01 and off-diagonal elements set to 1
A1 = ones(n) - diag(ones(1,n)) + diag(ones(1,n) * 1.01);

% Create the second matrix with diagonal elements set to 0.99 and off-diagonal elements set to 1
A2 = ones(n) - diag(ones(1,n)) + diag(ones(1,n) * 0.99);

% Create the third matrix with all elements set to 1 (including diagonal)
A3 = ones(n);

% Store the matrices in a cell array for looping
matrices = {A1, A2, A3};
descriptions = {'1.01 on diagonal', '0.99 on diagonal', '1.0 on diagonal'};

% Loop through each matrix, display the structure, calculate eigenvalues and eigenvectors, and display results
for i = 1:length(matrices)
    A = matrices{i};
    
    % Display the matrix
    fprintf('Matrix structure for matrix with %s:\n', descriptions{i});
    disp(A);
    
    % Plotting a graph to simulate a chemical structure (connected graph)
    G = graph(A ~= 0, 'upper');
    figure;
    plot(G, 'Layout', 'force');
    title(sprintf('Graphical representation of Matrix with %s', descriptions{i}));
    
    % Calculate eigenvalues and eigenvectors
    [V, D] = eig(A);
    
    % Display eigenvalues and match with corresponding eigenvectors
    eigenvalues = diag(D);
    fprintf('Eigenvalues and corresponding eigenvectors for matrix with %s:\n', descriptions{i});
    for j = 1:length(eigenvalues)
        fprintf('Eigenvalue: %f\n', eigenvalues(j));
        fprintf('Corresponding Eigenvector:\n');
        disp(V(:, j));
        fprintf('\n'); % Add a newline for better readability
    end
    
    fprintf('\n'); % Add a newline for better readability between matrices
end
