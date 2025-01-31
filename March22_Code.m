% Define the matrices
A1 = [0 1 1 1; 
      1 0 1 1; 
      1 1 0 1; 
      1 1 1 0];

A2 = [0 1 1 1; 
      1 0 1 1; 
      1 1 0 1; 
      1 1 1 0];

a = 0.01;
b = 1;
A3 = [a b 0.1 1; 
      b a 1 0.1; 
      0.1 1 a b; 
      1 0.1 b a];

A4 = [1 a 0.1 1; 
      a 1 1 0.1; 
      0.1 1 1 a; 
      1 0.1 a 1];

% Calculate eigenvectors and eigenvalues for A1
[eigenvectors1, eigenvalues1] = eig(A1);

% Calculate eigenvectors and eigenvalues for A2
[eigenvectors2, eigenvalues2] = eig(A2);

% Calculate eigenvectors and eigenvalues for A3
[eigenvectors3, eigenvalues3] = eig(A3);

% Calculate eigenvectors and eigenvalues for A4
[eigenvectors4, eigenvalues4] = eig(A4);

% Display eigenvalues and eigenvectors
disp('Eigenvalues for A1:');
disp(diag(eigenvalues1));
disp('Eigenvectors for A1:');
disp(eigenvectors1);

disp('Eigenvalues for A2:');
disp(diag(eigenvalues2));
disp('Eigenvectors for A2:');
disp(eigenvectors2);

disp('Eigenvalues for A3:');
disp(diag(eigenvalues3));
disp('Eigenvectors for A3:');
disp(eigenvectors3);

disp('Eigenvalues for A4:');
disp(diag(eigenvalues4));
disp('Eigenvectors for A4:');
disp(eigenvectors4);

% Plot matrices
figure;
subplot(2, 2, 1);
spy(A1, 'b');
title('Matrix A1');

subplot(2, 2, 2);
spy(A2, 'r');
title('Matrix A2');

subplot(2, 2, 3);
spy(A3, 'g');
title('Matrix A3');

subplot(2, 2, 4);
spy(A4, 'm');
title('Matrix A4');