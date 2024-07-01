function [x,its,resnormvec]=Jacobi(A,f,x0,maxit,tol)
% function [x,its,resnormvec]=Jacobi(A,f,x0,maxit,tol)
% Funzione che implementa il metodo di Jacobi per la risoluzione del
% sistema lineare Ax=f.

x=x0;
% calcolo il residuo iniziale
r=f-A*x;
norm0=norm(r);
res=norm0;

% prealloco il vettore dei residui, lo inizializzo insieme a its
resnormvec=zeros(maxit+1,1);
resnormvec(1)=1;
its=1;

% estraggo la diagonale di A
d=diag(A);

% inizio il ciclo
while its<=maxit && res>=tol*norm0

    % aggiorno x
    x=x+r./d;

    % calcolo il nuovo residuo e la sua norma
    r=f-A*x;
    res=norm(r);
    resnormvec(its)=res/norm0;
   
    % aggiorno its
    its=its+1;

end
% considero solo le norme dei residui che ho effettivamente calcolato
resnormvec=resnormvec(1:its);