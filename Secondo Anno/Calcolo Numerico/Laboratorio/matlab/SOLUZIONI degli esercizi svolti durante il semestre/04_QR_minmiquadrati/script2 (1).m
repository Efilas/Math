% Es 1

% genero A e b
A=[  1     2     3     4;
    -1     2     5    -2 ;
     2     0     4    -3 ;
    10    -1    -3     0 ;
     1     1     1    -1 ];
[n,m]=size(A);
b=ones(n,1);

% risolvo con Householder e stampo i risultati
[x_house,res]=minquad_house(A,b);
fprintf('Householder - res: %e\n',res)


% risolvo con equazioni normali e stampo i risultati
[x_chol,res]=minquad_chol(A,b);
fprintf('Normal equations - res: %e\n',res)

% stampo la differenza delle due soluzioni
fprintf('||x_house-x_chol||: %e\n',norm(x_chol-x_house))