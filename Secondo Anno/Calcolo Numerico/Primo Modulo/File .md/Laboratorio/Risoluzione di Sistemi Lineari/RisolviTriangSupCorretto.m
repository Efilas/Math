function [x] = RisolviTriangSupCorretto(U,y)
% Risolve il sistema lineare triangolare superiore U*x = y

%prealloco x
n = length(y);
x = zeros(n,1);

%definisco ultima componente di x
x(n) = y(n)/U(n,n);

%inizio ciclo for
for k = n-1:-1:1
    %s = 0;
    %for j = k+1:n
    %    s = s+U(k,j) * x(j);
    %end
    %x(k) = 1/U(k,k) * (y(k)-s);
    x(k) = 1/U(k,k) * (y(k)-U(k,k+1:n)*x(k+1:n));
end