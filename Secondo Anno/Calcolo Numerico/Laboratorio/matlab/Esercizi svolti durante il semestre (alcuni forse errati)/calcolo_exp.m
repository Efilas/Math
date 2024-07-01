function [x,x_true]=calcolo_exp(t,nmax,tol)

format long e
x_true=exp(t);
x=1;f=1;
for k=1:nmax
    f=f*k;
    x = x + t^k/f;
    err(k) = abs(x-x_true);
    err_rel(k)=err(k)/abs(x_true);
    %disp([k,x,x_true, err(k)])
    fprintf('It: %d; Appr: %e, Sol Ex: %e, Err: %e \n\n', k,x,x_true,err(k))
    if (err_rel(k)<tol)
        break
    end
end
%semilogy(err,'go') %tabella con logaritmica nella y