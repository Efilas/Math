n = 1000;
A = rand(n,n);
A = A' * A;
b = rand(n,1);
x0 = zeros(n,1);
tol = 1e-8;
maxit = n*10;

x_true = A\b;
[x, res, it] = grad_con(A, b, x0, tol, maxit);
disp(norm(x-x_true) / norm(x_true));
semilogy(res, "r-");
ylabel("norma del residuo");
xlabel("iterazione");
title("storia della convergenza");