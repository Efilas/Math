function a = get_polyn_ls(x,y,m)
% ricavo n
n=length(x)-1;
% costruisco la matrice di Vandermonde (n+1)x(m+1)
V(1:n+1,m+1)=ones(n+1,1);
for j=m:-1:1
  V(1:n+1,j) = x.*V(1:n+1,j+1);
end
% Risolve pb ai minimi quadrati
a = V\y;
