function a = get_polyn(x,y)
% ricavo n
n=length(x)-1;
%costruisco la matrice di Vandermonde (n+1)x(n+1)
V(1:n+1,n+1)=ones(n+1,1);
for j=n:-1:1
  V(1:n+1,j) = x.*V(1:n+1,j+1);
end
% risolvo il sistema lineare
a = V\y;
