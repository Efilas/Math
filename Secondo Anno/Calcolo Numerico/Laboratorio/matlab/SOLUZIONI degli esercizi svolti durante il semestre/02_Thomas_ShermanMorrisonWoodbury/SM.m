% script 2

% creo i dati
n=10;
[A,f]=creamatrice(n);

% creo v e w come richiesti
v=eye(n,1);
coef=(n-1)^2/(4*pi^2);
w=coef*ones(n,1)-A(:,1);

% Risolvo i due sistemi con A tridiag, in modo efficiente
Z=Thomas_multi(A,[w,f]);

% estraggo le soluzioni
w1=Z(:,1);
w2=Z(:,2);

% applico la formula di SM
theta1=1+v'*w1;
theta2=v'*w2;
x = w2-w1*(theta2/theta1);

% controllo l'accuratezza senza creare B esplicitamente, che costerebbe troppo!
normSM=norm( f - A*x - w*(v'*x));
fprintf('Formula di Sherman-Morrison, norma del residuo: %d\n', normSM)
