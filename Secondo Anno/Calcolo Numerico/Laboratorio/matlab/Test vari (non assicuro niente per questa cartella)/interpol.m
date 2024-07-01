function [coeff] = interpol(x,y)
n=length(x);
V=ones(n,n);
for k=2:n
    V(:,k)=V(:,k-1).*x;
end
coeff=V\y;
str='';
for k=0:n-1
    str=strcat(str,' + ',string(coeff(k+1)),'*x.^',string(k));
end
eval('fun = @(x) 0'+str);
plot(x,y,'x')
hold on 
fplot(fun,[min(x),max(x)])