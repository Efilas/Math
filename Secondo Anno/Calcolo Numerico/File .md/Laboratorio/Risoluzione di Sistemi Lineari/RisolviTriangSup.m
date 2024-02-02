function [x] = RisolviTriangSup(U,y)

n = size(U,1);
x = zeros(n,1);
x(n) = y(n)/U(n,n);
for k = n:-1:1
    x(k) = (y(k) - U(k,k+1:n)*x(k+1:n))/(U(k,k));
end