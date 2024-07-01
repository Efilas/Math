function [x, its, resnormvec] = Jacobi(A, f, x0, maxit, tol)

resnormvec = zeros(maxit+1, 1);
d = diag(A);
x = x0;
its = 1;
r = f - A*x0;
resnormvec(1) = 1;
norm0 = norm(r);
res = norm(r);

while res >= tol*norm0 && its <= maxit
    its = its+1;
    x = x + r./d;
    r = f - A*x;
    res = norm(r);
    resnormvec(its) = res/norm0;
end

% for k = 1:maxit
%     x = x+r./d;
%     r = f- A*x;
%     its = k;
%     resnormvec(k) = norm(r)/norm0;
%     if resnormvec(k)<tol
%         break
%     end
% end

resnormvec = resnormvec(1:its);
