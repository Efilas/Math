function [x,truelambda,tot_iter]=ITpotenze(A,mu,x0,maxit,tol,info,etrue)
% function [x,truelambda,tot_iter]=ITpotenze(A,mu,x0,maxit,tol,etrue)
% funzione che implementa il metodo delle potenze inverse traslate per il calcolo
% dell'autovalore di A più vicino a mu e relativo autovettore


% normalizzo l'iterato iniziale
x=x0/norm(x0);
% risolvo con A-mu*I
I=speye(size(A));
[L,U]=lu(A-mu*I);
y=U\(L\x);

% prealloco
store_res=zeros(maxit,1);
store_eig=zeros(maxit,1);

for i=1:maxit
    % quoziente di Rayleigh
	lambda = x'*y;
    % Lambda vero
    truelambda=1/lambda+mu;
	
    % residuo
    r=y-lambda*x;

    % norma del residuo relativa
	relres=norm(r)/abs(lambda);

	store_res(i)=relres;
    if nargin>5
        store_eig(i)=abs(truelambda-etrue);
    end

    if info
	    disp([i,relres,abs(truelambda)])
    end
    
    if relres < tol
		break
    end

    % normalizzo
	x=y/norm(y);
    % risolvo con A-mu*I
	y=U\(L\x);
end

tot_iter=i;

% plotto residuo ed eventualmente errore
semilogy(store_res(1:i))
if nargin>5
    hold on
    semilogy(store_eig(1:i),'r')
    legend('residuo','errore')
else
    legend('residuo','errore')
end

