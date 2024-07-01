function [pL]=polLag(X,f)
n=length(X);
pL=@(x) 0;
for i=1:n
    L=@(x) 1;
    for j=1:n
        if j~=i
            L=@(x) ((x-X(j))./(X(i)-X(j))).*L(x);
        end
    end
    pL=@(x) pL(x)+f(X(i)).*L(x);
end
fplot(f,[min(X),max(X)],'k')
hold on
fplot(pL,[min(X),max(X)],'r')