% Replace one of the 0's with 2
A_modified = A;
A_modified(1,1) = 2;

% Display the modified matrix
disp('Modified Matrix A:');
disp(A_modified);

% Calculate eigenvectors and eigenvalues for the modified matrix
[eigenvectors_modified, eigenvalues_modified] = eig(A_modified);

% Display modified eigenvectors
disp('Modified Eigenvectors:');
disp(eigenvectors_modified);

% Display modified eigenvalues
disp('Modified Eigenvalues:');
disp(diag(eigenvalues_modified));

% Replace two of the 0's with 3 and -1
A_modified_two = A;
A_modified_two(1,1) = 3;
A_modified_two(2,2) = -1;

% Display the modified matrix with two changes
disp('Matrix A with Two Changes:');
disp(A_modified_two);

% Calculate eigenvectors and eigenvalues for the modified matrix
[eigenvectors_modified_two, eigenvalues_modified_two] = eig(A_modified_two);

% Display modified eigenvectors
disp('Modified Eigenvectors with Two Changes:');
disp(eigenvectors_modified_two);

% Display modified eigenvalues
disp('Modified Eigenvalues with Two Changes:');
disp(diag(eigenvalues_modified_two));

% Replace two of the 0's at different locations (positive and negative)
A_modified_different_location = A;
A_modified_different_location(1,2) = 3; % Positive value
A_modified_different_location(3,4) = -2; % Negative value

% Display the modified matrix with different location changes
disp('Matrix A with Different Location Changes:');
disp(A_modified_different_location);

% Calculate eigenvectors and eigenvalues for the modified matrix
[eigenvectors_modified_diff_loc, eigenvalues_modified_diff_loc] = eig(A_modified_different_location);

% Display modified eigenvectors
disp('Modified Eigenvectors with Different Location Changes:');
disp(eigenvectors_modified_diff_loc);

% Display modified eigenvalues
disp('Modified Eigenvalues with Different Location Changes:');
disp(diag(eigenvalues_modified_diff_loc));

% Plot original and modified matrices
figure;
subplot(2, 2, 1);
spy(A, 'b');
title('Original Matrix A');

subplot(2, 2, 2);
spy(A_modified, 'r');
title('Modified Matrix A (One Change)');

subplot(2, 2, 3);
spy(A_modified_two, 'g');
title('Modified Matrix A (Two Changes)');

subplot(2, 2, 4);
spy(A_modified_different_location, 'm');
title('Modified Matrix A (Different Location Changes)');
