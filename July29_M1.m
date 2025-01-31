% Initial matrix with varying k
k_values = [1, 0.1, 0.01, 0.001, 0.0001];
for k = k_values
    A = [0, 1+k, 1, 1;
         1+k, 0, 1, 1;
         1, 1, 0, 1-k;
         1, 1, 1-k, 0];
    [V, D] = eig(A);
    disp(['Eigenvalues for k = ', num2str(k)]);
    disp(diag(D));
    disp('Eigenvectors:');
    for i = 1:size(V, 2)
        disp(V(:, i)');
    end
end
