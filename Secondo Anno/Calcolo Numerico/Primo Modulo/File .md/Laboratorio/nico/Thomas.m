function [x] = Thomas(A, f)
n = size(A, 1);
a = diag(A);
b = diag(A,-1);
c = diag(A, 1);

alpha = zeros(n,1);
beta = zeros(n-1, 1);

alpha(1) = a(1);

for i = 2:n
    beta(i-1) = b(i-1)/alpha(i-1);
    alpha(i) = a(i) - c(i-1) * beta(i-1);
end

y = zeros(n,1);
y(1) = f(1);

for i = 2:n
    y(i) = f(i) - beta(i-1);
end

disp(norm(A - (diag(beta, -1) + eye(n)) * (diag(alpha) + diag(c, 1))));

x = zeros(n,1);
x(n) = y(n) / alpha(n);

for i = n-1:-1:1
    x(i) = (y(i) - x(i+1) * c(i)) / alpha(i);
end