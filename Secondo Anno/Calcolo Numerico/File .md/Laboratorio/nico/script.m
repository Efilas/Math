format short;
n = 5;

A = diag(rand(n,1)) + diag(rand(n-1,1), 1) + diag(rand(n-1,1), -1);

f = rand(n,1);

x = Thomas(A, f);
disp(norm(f - A*x));