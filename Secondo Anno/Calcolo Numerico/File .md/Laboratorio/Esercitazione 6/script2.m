n = 5;
Q = randn(10, 10);
Q = orth(Q);
maxit = 500;
tol = 1e-8;
x0 = rand(10,1);
x0 = x0 / norm(x0);
A = Q * diag(1 : 10)/Q;
[x, lambda, e, err] = potenze2(A, x0, maxit, tol);
semilogy(1:1:length(e), e, 'r')
hold on
semilogy(1:1:length(err), err, 'g')
title('rosso = |lambda|, verde(lambdai)')