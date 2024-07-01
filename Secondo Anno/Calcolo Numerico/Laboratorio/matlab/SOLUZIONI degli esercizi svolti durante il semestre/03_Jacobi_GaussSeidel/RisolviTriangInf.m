function y=RisolviTriangInf(L,b)
% function y=RisolviTriangInf(L,b)
% Funzione che risolve il sistema triangolare inferiore L*y=b con la
% sostituzione all'avanti

n=length(b);
% prealloco y
y=zeros(n,1);

% calcolo la prima componente di y
y(1)=b(1)/L(1,1);

% poi inizio il loop
for i=2:n
    y(i)=(b(i)-L(i,1:i-1)*y(1:i-1))/L(i,i);
end
