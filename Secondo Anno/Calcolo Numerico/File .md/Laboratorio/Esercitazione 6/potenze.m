function [x,lambda]=potenze(A,x0,maxit,tol)

x = x0;
y = A * x;
for i = 1:maxit
    lambda = x' * y;
    r = y - lambda * x;
    norma = norm(r);
    disp([i, norma, abs(lambda)]);
    if norma/(abs(lambda)) < tol
        break;
    end
    x = y/norm(y);
    y = A * x;
end
