function [Q, R] = fatt_House(A)
[n,m] = size(A);
U = eye(n);
R = A;

for i = 1:m
    x = R(i:n, i);
    v = x;
    v(1) = v(1) - norm(x);
    beta = 2 / (v'*v);
    R(i:n, i:m) = R(i:n, i:m) - beta * v * (v' * R(i:n, i:m));
    R(i,i) = norm(x);
    U(i:n, :) = U(i:n, :) - beta * v * (v' * U(i:n, :));
end
Q = U';

