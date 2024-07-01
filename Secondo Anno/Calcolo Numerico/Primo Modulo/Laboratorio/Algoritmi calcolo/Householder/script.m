format compact;
n = 100;
m = 5;
A = 100 * (2*rand(n,m)-1);
[Q,R] = fatt_House(A);
disp(norm(A - Q*R) / norm(A));