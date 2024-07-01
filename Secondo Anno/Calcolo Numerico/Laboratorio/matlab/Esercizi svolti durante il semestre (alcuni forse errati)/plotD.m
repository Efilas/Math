subplot(1,2,1)
fplot(@sin) 
%@ da usare se la funzione è matlab-built-in
%non si possono compiere operazioni

%creo una variabile contenente una funzione
fun = @(x) 0.5*exp(x);

subplot(1,2,2)
fplot(fun)