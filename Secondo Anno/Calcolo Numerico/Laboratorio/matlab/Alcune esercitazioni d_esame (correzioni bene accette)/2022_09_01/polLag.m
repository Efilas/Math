function pL=polLag(n,a,b,f)
X=linspace(a,b,n+1);
pL=@(x) 0;
for i=1:n+1
    L=@(x) 1;
    for j=1:n+1
        if j~=i
            L=@(x) ((x-X(j))./(X(i)-X(j))).*L(x);
        end
    end
    pL=@(x) pL(x)+f(X(i)).*L(x);
end