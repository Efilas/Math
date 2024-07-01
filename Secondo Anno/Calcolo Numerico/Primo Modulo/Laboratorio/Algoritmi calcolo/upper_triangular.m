function [x] = upper_triangular(A, b)
% Supponiamo A nxn invertibile
n = size(A,1);
x = zeros(n, 1);
for i = n:-1:1
    x(i) = (b(i) - A(i,i+1:n) * x(i+1:n)) / A(i,i);
end