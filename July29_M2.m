% Define the parameters for the matrices
A15_values = [0, 1, 2];
A55_values = [0, 1, -1];

% Iterate over different values of A15 and A55
for A15 = A15_values
    for A55 = A55_values
        % Construct the matrix with the current values of A15 and A55
        A = [0, 1.001, 1, 1, A15, 0, 0, 0;
             1.001, 0, 1, 1, 0, A15, 0, 0;
             1, 1, 0, 0.999, 0, 0, A15, 0;
             1, 1, 0.999, 0, 0, 0, 0, A15;
             A15, 0, 0, 0, A55, 0, 0, 0;
             0, A15, 0, 0, 0, A55, 0, 0;
             0, 0, A15, 0, 0, 0, A55, 0;
             0, 0, 0, A15, 0, 0, 0, A55];
        
        % Compute eigenvalues and eigenvectors
        [V, D] = eig(A);
        
        % Display results
        fprintf('A15 = %d, A55 = %d\n', A15, A55);
        fprintf('Eigenvalues:\n');
        disp(diag(D));
        fprintf('Eigenvectors:\n');
        disp(V);
        
        % Optionally, save results to a file
        filename = sprintf('results_A15_%d_A55_%d.mat', A15, A55);
        save(filename, 'A', 'V', 'D');
    end
end
