function [eigenvalues, eigenvectors] = compute_eigen(k)
    % Define the symmetric matrix with given k
    A = [0, 1+k, 1, 1-k;
         1+k, 0, 1, 1-k;
         1, 1, 0, 1;
         1-k, 1-k, 1, 0];
    
    % Compute eigenvalues and eigenvectors
    [V, D] = eig(A);
    
    % Extract eigenvalues and eigenvectors
    eigenvalues = diag(D);
    eigenvectors = V;
    
    % Normalize eigenvectors
    for i = 1:size(eigenvectors, 2)
        eigenvectors(:,i) = eigenvectors(:,i) / norm(eigenvectors(:,i));
    end
end
