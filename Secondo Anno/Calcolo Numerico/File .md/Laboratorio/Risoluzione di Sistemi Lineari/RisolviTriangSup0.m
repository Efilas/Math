function [x] = RisolviTriangSup0(U,y)

n = size(U,1);
x = zeros(n,1);
%x(n) = y(n)/U(n,n);
for k = n:-1:1
    somma = 0;
    for j = k+1:n
        somma = U(k,j)*x(j) + somma;
    end
    x(k) = (y(k) - somma)/(U(k,k));
end
