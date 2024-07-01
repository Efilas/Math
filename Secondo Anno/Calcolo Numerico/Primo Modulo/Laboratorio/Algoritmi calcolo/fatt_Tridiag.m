function [L, U] = fatt_Tridiag(A)
n = size(A, 1);
m = zeros(n-1, 1);
for i = 1:n-1
    m(i) = A(i+1, i) / A(i, i);
    A(i+1, i+1) = A(i+1, i+1) - m(i) * A(i, i+1);
end
U = sparse(triu(A));
L = sparse(speye(n) + diag(m, -1));