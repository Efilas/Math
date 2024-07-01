% genero i dati
n=6; 
% genero una U triangolare superiore con componenti random
rng(1); 
U=triu(randn(n)); 
% e un termine noto di 1 e -1
b=(-1).^(1:n)';

% Risoluzione di un sistema con matrice triang.sup.
x = RisolviTriangSup(U,b);
% stampo la norma del residuo assoluto
fprintf('Norma del residuo assolutio del sistema triangolare: %e\n',norm(b-U*x))


% Il metodo di eliminazione di Gauss
% genero la matrice e il termine noto
A = [-2.3   4  -1.5  -1;
      4    -9.2  0.9  5;
     -4    5   -5   5.2;
     -8    8   -13.4 20];
b=[1,-3,3,-2]';

% risolvo con Gauss implementato da me
x_gauss=gauss(A,b);
% calcolo la soluzione "esatta" con \
x_esatta=A\b;
fprintf('Metodo di eliminazione di Gauss\n residuo rel.: %e, errore rel.: %e\n',...
    norm(b-A*x_gauss)/norm(b), norm(x_gauss-x_esatta)/norm(x_esatta))