function [x,lambda,e, err]=ITpotenze2(A,x0,maxit,tol,mu)

x = x0;
y = U\L\x * x;
[L,U] = lu(A-mu*eye(size(A)));
for i = 1:maxit
    lambda = x'*y;
    truelambda = 1/lambda + mu;
    e(i) = abs(lambda - 10);
    err(i) = (9/10)^i;
    r = y - lambda * x;
    norma = norm(r);
    disp([i, norma, abs(lambda)]);
    if norma/(abs(lambda)) < tol
        break;
    end
    x = y/norm(y);
    w = L\x;
    y = U\w;
end

