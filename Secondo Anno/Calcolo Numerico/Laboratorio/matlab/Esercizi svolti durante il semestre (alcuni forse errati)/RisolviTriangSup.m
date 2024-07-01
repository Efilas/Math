function [x] = RisolviTriangSup(U,y)
% risolvo Ux=y, con U triangolare superiore
n=length(y);
x(n,1)=y(n,1)/U(n,n);
for k=n-1:-1:1
    x(k,1)=(y(k,1)-U(k,k+1:n)*x(k+1:n,1))/U(k,k);
end
%disp('deviazione: '+string(norm(x)/norm(U\y)));
%disp('norma: '+string(norm(y-U*x)));
end