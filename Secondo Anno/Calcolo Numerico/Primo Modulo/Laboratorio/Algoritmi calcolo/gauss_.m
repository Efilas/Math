function [x] = gauss_(A, b)
n = size(A, 1);


for i = 1:n-1
    L = eye(n-i);
    L(i+1:n, i) = -A(i+1:n, i) ./ A(i,i);
    A = L * A;
    b = L * b;
end
% iterazione i
% m(j) = - A(j,i) / A(i,i) per j = i+1, ... , n
% b(j) = b(j) + m(j) * b(i) per j = i+1, ..., n
% A(j,k) = A(j,k) + m(j) * A(i,k) per j = i+1,...,n e k = i+1,...n

x = upper_triangular(A, b);