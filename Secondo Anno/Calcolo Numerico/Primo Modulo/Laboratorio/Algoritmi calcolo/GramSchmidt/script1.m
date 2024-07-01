n = 20;
m = 10;
A = 100*rand(n, m);
[Q1, R1] = gram(A);
disp(norm(A - Q1*R1, "fro") / norm(A, "fro"));
%[Qp, Rp] = gram_update(Q1, R1, ones(20,1));