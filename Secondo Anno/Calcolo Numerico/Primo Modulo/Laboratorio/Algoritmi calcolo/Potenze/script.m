n = 10;
A = rand(n,n);
A = A'*A;
[x1, lambda1] = alg_potenze(A);
disp(eigs(A));
[x2, lambda2] = alg_potenze(A - diag(lambda1*ones(n,1)), 5000);
disp(lambda1);
disp(lambda2);