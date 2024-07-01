function [x,its,resnormvec]=GS(A,f,x0,maxit,tol)
% function [x,its,resnormvec]=GS(A,f,x0,maxit,tol)
% Funzione che implementa il metodo di gauss-Seidel per la risoluzione del
% sistema lineare Ax=f.

x=x0;
% calcolo il residuo iniziale
r=f-A*x;
norm0=norm(r);
res=norm0;

% prealloco il vettore dei residui, lo inizializzo insieme a its
resnormvec=zeros(maxit,1);
resnormvec(1)=1;
its=1;

% estraggo la parte triangolare inferiore di A
L=tril(A);

% inizio il ciclo
while its<=maxit && res>=tol*norm0

    % risolvo il sistema triangolare inferiore L*y=r
    y=RisolviTriangInf(L,r);
    % aggiorno x
    x=x+y;

    % calcolo il nuovo residuo e la sua norma
    r=f-A*x;
    res=norm(r);
    resnormvec(its)=res/norm0;
   
    % aggiorno its
    its=its+1;

end
% considero solo le norme dei residui che ho effettivamente calcolato
resnormvec=resnormvec(1:its);