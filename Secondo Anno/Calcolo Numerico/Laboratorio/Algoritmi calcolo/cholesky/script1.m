n = 1000;
B = rand(n);
A = B*B';
L = Cholesky(A);
disp(norm(A - L*L')/norm(A));