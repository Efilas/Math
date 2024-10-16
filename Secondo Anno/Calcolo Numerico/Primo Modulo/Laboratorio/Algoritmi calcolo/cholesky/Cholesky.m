function [L] = Cholesky(A)
n = size(A, 1);
L = zeros(n,n);

for i = 1:n
    L(i,i) = sqrt(A(i,i) - L(i,1:i-1) * L(i,1:i-1)');
    for j = i+1:n
        L(j,i) = (A(j,i) - L(i,1:i-1) * L(j,1:i-1)') / L(i,i);
    end
end