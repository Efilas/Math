% script 1

% creo i dati
n=10;
[A,f]=creamatrice(n);

% risolvo il sistema
u=Thomas(A,f);

% calcolo il residuo e lo stampo
res=norm(f-A*u);
fprintf('La norma del residuo assoluto: %e\n',res)