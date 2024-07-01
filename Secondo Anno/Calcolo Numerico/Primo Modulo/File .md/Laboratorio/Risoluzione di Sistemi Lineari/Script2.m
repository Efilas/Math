n = 6;
%rng(1);
A = randn(n,n);
b = (-1).^(1:n)';
x = Gauss(A,b);
disp(norm(y - U*x));
x_true = A\b;
disp(norm(x-x_true)/norm(x_true));