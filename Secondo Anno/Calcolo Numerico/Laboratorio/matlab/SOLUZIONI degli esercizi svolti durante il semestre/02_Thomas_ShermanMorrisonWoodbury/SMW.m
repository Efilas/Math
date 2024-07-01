% es 3 Facoltativo

% creo i dati
n=10;
[A,f]=creamatrice(n);
s=5;
W=rand(n,s); V=rand(n,s);

% Risolvo i due sistemi con A tridiag, in modo efficiente
Z=Thomas_multi(A,[W,f]);

% estraggo le soluzioni
w1=Z(:,1:s);
w2=Z(:,s+1);

% applico la formula di SM
% N.B: ora devo anche risolvere un sistema lineare sxs!
theta1=eye(s)+V'*w1;
theta2=V'*w2;
Q=gauss(theta1,theta2);
x = w2-w1*Q;

% controllo l'accuratezza senza creare B esplicitamente, che costerebbe troppo!
normSM=norm( f - A*x - W*(V'*x));
fprintf('Formula di Sherman-Morrison-Woodbury, norma del residuo: %d\n', normSM)
