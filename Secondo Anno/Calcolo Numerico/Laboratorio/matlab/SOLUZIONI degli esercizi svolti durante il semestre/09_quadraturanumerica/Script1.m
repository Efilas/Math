% Esercizio 1
%
a=3e-4; b=14e-4; T=213;

% definisco la funzione integranda
f=@(x)( 2.39e-11./( x.^5.*(exp(1.432./(T.*x))-1) ) );
% Valore "esatto dell'integrale
Iex=0.020690855481654;

% a) plotto f sull'intervallo [a,b]
figure
fplot(f,[a,b])
% b)
x0=(a+b)/2;

% formula dei rettangoli e relativo errore
I0=(b-a)*f(x0); E0=abs(I0-Iex)/abs(Iex);

% formula dei trapezi e relativo errore
I1=(b-a)/2*( f(a)+f(b) ); E1=abs(I1-Iex)/abs(Iex);

% formula di Simpson e relativo errore
I2=(b-a)/6*( f(a)+4*f(x0)+f(b)); E2=abs(I2-Iex)/abs(Iex);

% Stampo i risultati
fprintf('Formula rettangoli: %d Formula trapezi: %d Formula Simpson: %d\n',I0,I1,I2);
fprintf(' Errore rettangoli: %d Errore trapezi: %d Errore Simpson: %d\n',E0,E1,E2);