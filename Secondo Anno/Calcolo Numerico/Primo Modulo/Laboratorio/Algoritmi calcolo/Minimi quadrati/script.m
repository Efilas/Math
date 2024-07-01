n = 100;
m = 99;
A = 20*rand(n,m) - 10;
b = 10 * rand(n,1) - 10;
x = min_quad(A,b);
x_true = A\b;
disp(norm(x-x_true) / norm(x_true));