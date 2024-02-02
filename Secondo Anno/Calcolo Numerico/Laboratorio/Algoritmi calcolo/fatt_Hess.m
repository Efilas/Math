function [L, U] = fatt_Hess(A)
n = size(A, 1);
m = zeros(n-1, 1);
for i = 1:n-1
    m(i) = A(i+1, i) / A(i,i);
    A(i+1,i+1:n) = A(i+1,i+1:n) - m(i) * A(i,i+1:n);
end
U = triu(A);
L = eye(n,n) + diag(m ,-1);