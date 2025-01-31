% Values for k to test
k_values = [1, 0.1, 0.001, 0.0001];

% Prepare to store results
results = struct;

% Compute and store results for each k value
for k = k_values
    [eigenvalues, eigenvectors] = July22_M1_compute_eigen(k);
    % Create a valid field name by converting k to a string and replacing periods
    field_name = sprintf('k_%s', strrep(num2str(k), '.', '_'));
    results.(field_name) = struct('eigenvalues', eigenvalues, 'eigenvectors', eigenvectors);
end

% Display results
for k = k_values
    % Convert k to string for field name
    field_name = sprintf('k_%s', strrep(num2str(k), '.', '_'));
    fprintf('Results for k = %s:\n', num2str(k));
    disp('Eigenvalues:');
    disp(results.(field_name).eigenvalues);
    disp('Eigenvectors:');
    disp(results.(field_name).eigenvectors);
end
