function [u] = SM(A,f)

n = 10;
v = [zeros(n-1, 1); 1];
w = (((n-1)^2)/(4*(pi^2)))*[ones(n,1)];

[A,f] = creamatrice(n);
B = [w, A(:, 2:n);

C = A^(-1)s