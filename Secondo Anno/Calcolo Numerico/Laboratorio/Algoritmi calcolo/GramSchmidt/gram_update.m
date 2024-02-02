function [Qp, Rp] = gram_update(Q1, R1, ap)
[n,m] = size(Q1);
Qp = [Q1 zeros(n,1)];
Rp = [R1 zeros(m,1) ; zeros(1,m+1)];

w = ap;
for i = 1:n-1
    Rp(i,m+1) = Q1(:,i)' * ap;
    w = w - Q1(:,i) * Rp(i,m+1);
end
Rp(m+1,m+1) = norm(w);
Q(:,m+1) = w / Rp(m+1,m+1);
