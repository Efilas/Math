function [x, lambda] = alg_potenze(A, maxit)
n = size(A, 1);
x = rand(n,1);
if ~exist('maxit', 'var')
    maxit = n;
end
for i = 1:maxit
    y = A*x;
    x = y / norm(y);
    lambda = x' * (A * x);
end