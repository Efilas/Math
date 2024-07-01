function x=Newton(f,df,x0,maxit,tola,tolr,tolf,Cq)
X(1)=x0;
F=f(x0);
for k=1:maxit
    X(k+1)=X(k)-F/df(X(k));
    F=f(X(k+1));
    if abs(F)<tolf || abs(X(k+1)-X(k))<=tolr*abs(X(k))+tola
        break
    end
end
x=X(end);
if Cq == true
    plot(X)
end