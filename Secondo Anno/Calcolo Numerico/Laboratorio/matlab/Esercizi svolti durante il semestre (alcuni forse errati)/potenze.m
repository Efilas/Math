function [x,lambda]=potenze(A,x0,maxit,tol)
x=x0;
y=A*x;
for i=0:maxit
    lambda=x'*y;
    r=A*x-lambda*x;
    nr=norm(r);
    nl=abs(lambda);
    disp([i,nr,nl]);
    if nr/nl<tol
        break
    end
    x=y/norm(y);
    y=A*x;
end



