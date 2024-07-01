function [x] = min_quad(A, b)
[n,m] = size(A);
R = [A b];

for i = 1:m
    x = R(i:n, i);
    x_ = norm(x);
    v = x;
    v(1) = v(1) - x_;
    alpha = 2 / (v' * v);
    R(i:n, i+1:m+1) = R(i:n, i+1:m+1) - alpha * v * (v' * R(i:n, i+1:m+1));
    R(i,i) = x_;
end

R1 = R(1:m,1:m);
b = R(1:m, m+1);

x = triang_sup(R1, b);