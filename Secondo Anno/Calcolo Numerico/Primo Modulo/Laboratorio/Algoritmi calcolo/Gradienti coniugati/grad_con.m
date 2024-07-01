function [x, res, it] = grad_con(A, b, x0, tol, maxit)
x = x0;
r = b - A*x;
res(1) = r'*r;
if res(1) < tol
    return;
end
p = r;
it = 1;

for i = 1:maxit
    w = A*p;
    alpha = res(i) / (p' * w);
    x = x + alpha * p;
    r = r - alpha * w;
    res(i+1) = r' * r;
    beta = res(i+1) / res(i);
    p = r + beta * p;
    it = it + 1;
    if res(i+1) < tol * res(1)
        return
    end
end