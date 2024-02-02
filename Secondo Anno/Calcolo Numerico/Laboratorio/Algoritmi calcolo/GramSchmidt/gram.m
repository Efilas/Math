function [Q1, R1] = gram(A)
[n,m] = size(A);
Q1 = zeros(n, m);
R1 = zeros(m, m);

for j = 1:m
    q_ = A(:,j);
    for k = 1:j-1
        R1(k, j) = Q1(:,k)' * A(:,j);
        q_ = q_ - Q1(:,k) * (R1(k,j));
    end
    R1(j,j) = norm(q_);
    Q1(:,j) = q_ / R1(j,j);
end