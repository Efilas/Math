function [S] = stirling(n_max)

y = 1;
e = exp(1);
sqrt_2pi = sqrt(2*pi);
for i = 1:n_max
    S = sqrt_2pi*sqrt(i)*(i/e)^i;
    y = y*i;
    err(i) = abs(y-S);
    err_rel(i) = err(i)/abs(y);
    % disp([i, S, y, err(i), err_rel(i)])
    fprintf('Iterazione: %d, Errore assoluto: %e, Errore relativo: %e, \n', i, err(i), err_rel(i))
end
semilogy(err_rel, 'ro')