function [x,lambda]=potenze(A,x0,maxit,tol,etrue)
% function [x,lambda]=potenze(A,x0,maxit,tol,etrue)
% funzione che implementa il metodo delle potenze per il calcolo
% dell'autovalore dominante di A e relativo autovettore


% normalizzo l'iterato iniziale
x=x0/norm(x0);
% applico A
y=A*x;
% prealloco
store_res=zeros(maxit,1);
store_eig=zeros(maxit,1);

for i=1:maxit
    % quoziente di Rayleigh
	lambda = x'*y;

    % residuo
    r=y-lambda*x;

    % norma del residuo relativa
	relres=norm(r)/abs(lambda);

	store_res(i)=relres;
    if nargin>4
        store_eig(i)=abs(lambda-etrue);
    end

	disp([i,relres,abs(lambda)])
	
    if relres < tol
		break
    end

    % normalizzo
	x=y/norm(y);
    % applico A
	y=A*x;
end

% plotto residuo ed eventualmente errore
semilogy(store_res(1:i))
if nargin>4
    hold on
    semilogy(store_eig(1:i),'r')
    legend('residuo','errore')
else
    legend('residuo','errore')
end

end