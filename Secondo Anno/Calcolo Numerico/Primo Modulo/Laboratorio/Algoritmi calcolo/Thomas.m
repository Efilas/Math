function [x] = Thomas(A, f)
n = length(f);
a = diag(A);
b = diag(A, -1);
c = diag(A, 1);

alpha = zeros(n, 1);
beta = zeros(n-1, 1);

alpha(1) = a(1);

for i = 2:n
    beta(i-1) = b(i-1) / alpha(i-1);
    alpha(i) = a(i) - c(i-1) * beta(i-1);
end


%L = eye(n) + diag(beta,-1);
%U = diag(alpha) + diag(c, 1);
%fprintf("risulato Thomas: %d\n", norm(A - L*U) / norm(A));


y = zeros(n,1);
y(1) = f(1);
for i = 2:n
    y(i) = f(i) - beta(i-1) * y(i-1);
end


%y_true = L\f;
%fprintf("risulato Ly=f: %d\n", norm(y_true - y) / norm(y_true));


x = zeros(n,1);
x(n) = y(n) / alpha(n);
for i = n-1:-1:1
    x(i) = (y(i) - x(i+1) * c(i)) / alpha(i);
end

%x_true = U\y;
%fprintf("risulato Ux=y: %d\n", norm(x_true - x) / norm(x_true));
