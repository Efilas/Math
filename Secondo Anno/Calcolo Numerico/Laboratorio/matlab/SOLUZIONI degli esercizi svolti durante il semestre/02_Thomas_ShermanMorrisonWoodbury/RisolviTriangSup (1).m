function x = RisolviTriangSup(U,y)
% Risolve il sistema U x = y con U triangolare superiore
%
% Input:
% U  matrice triang.sup
% y  vettore dei termini noti (colonna)
%
% Output:
% x  soluzione del sistema  

n=length(y);
% parto dal passo
x(n,1)=y(n)/U(n,n);
% e poi torno su
for k=n-1:-1:1
    % U(k,k+1:n)*x(k+1:n) <-- prodotto scalare: uso il vettore riga
    % U(k,k+1:n) e lo moltiplico per il vettore colonna x(k+1:n).
    % risultato: uno scalare
    x(k) = (y(k) - U(k,k+1:n)*x(k+1:n))/U(k,k);
end
