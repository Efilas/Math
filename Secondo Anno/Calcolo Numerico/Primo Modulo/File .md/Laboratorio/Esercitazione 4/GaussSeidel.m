function [x, its, resnormvec] = GaussSeidel(A, f, x0, maxit, tol)

resnormvec = zeros(maxit+1, 1);
x = x0;
its = 1;
r = f - A*x0;
resnormvec(1) = 1;
P = tril(A);
norm0 = norm(r);

while resnormvec(its) > tol && its <= maxit
    its = its+1;
    x = x + RisolviTriangInf(P, r); 
    r = f - A*x;
    res = norm(r);
    resnormvec(its) = res/norm0;
end

resnormvec = resnormvec(1:its);

