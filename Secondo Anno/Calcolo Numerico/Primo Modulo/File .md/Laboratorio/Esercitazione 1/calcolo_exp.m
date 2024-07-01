function [x,x_true]=calcolo_exp(t,nmax,tol)
%Funzione che calcola x_xtrue = exp(t) e lo approssima con i 
% primi nmax termini della sua serie di potenze
%INPUT 
%t = punto in cui calcolare l'esponenziale
%nmax = massimo numero di termini nella serie di potenze
%toll = tolleranza sull'errore calcolato
%OUTPUT
%x = approssimazione di exp(t) mediante nmax termini della sua
% serie di potenze
%x_true = soluzione esatta (x_true = exp(t))

%cambio formato di stampa
format long e 


x_true=exp(t);
x=1;
y = 1;
for k=1:nmax
    y = y*k;
    x = x + t^k/y;
    err(k) = abs(x-x_true);
    err_rel(k) = err(k)/abs(x_true);
    disp([k,x,x_true, err(k), err_rel(k)])
    if (err_rel(k)<tol) 
        break
    end
end
semilogy(err, 'ro')
%plot(err, 'ro')