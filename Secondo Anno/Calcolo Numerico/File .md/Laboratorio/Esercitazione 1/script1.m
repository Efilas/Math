%script

%definisco i dati
%t = -2;
t = 20;
nmax = 100;
tol = 1e-12;

%chiamo la funzione
 [x,x_true]=calcolo_exp(t,nmax,tol);