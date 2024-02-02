function [Q, R] = fatt_QR(A)
n = size(A, 1);
Q = zeros(n,n);
Q(:, 1) = A(:,1) / norm(A(:, 1));


for i = 2:n
    Q(:, i) = A(:, i);
    for j = 1:i-1
        Q(:, i) = Q(:, i) - A(:,i)' * Q(:,j) * Q(:, j);
    end
    Q(:, i) = Q(:, i) / norm(Q(:, i));
end

R = Q' * A;