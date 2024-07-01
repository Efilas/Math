function x = gauss(A,b)  
% Funzione che risolve il sistema Ax=b con il metodo di Gauss
%
% INPUT
% A: matrice dei coefficienti
% b: termine noto
%
% OUTPUT
% x soluzione calcolata

n=length(b);
% inizio a fare le trasformazione del metodo di Gauss
for k=1:n-1
   m = A(k+1:n,k)/A(k,k);
   % sia su A
   A(k+1:n,k+1:n) = A(k+1:n,k+1:n) - m*A(k,k+1:n);
   % che sul termine noto
   b(k+1:n) = b(k+1:n) - m*b(k);
end
% l'implementazione sopra è tale per cui il fattore U è memorizzato nella
% parte traingolare superiore della A che ottengo.
% Quindi estraggo U usando la funzione triu
U=triu(A);
% risolvo il sistema triangolare superiore Ux=b con RisolviTriangSup 
x = RisolviTriangSup(U,b);