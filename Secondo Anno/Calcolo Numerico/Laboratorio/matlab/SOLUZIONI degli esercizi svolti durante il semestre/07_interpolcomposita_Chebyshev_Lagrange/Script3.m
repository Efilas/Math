% esercizio 3
clear all
close all

f = @(x)(1./(1+x.^2));
alfa=-5; beta=5;

k_vec=[10,20,30];    % # intervalli

% ciclo sul grado
for l=1:2

  for i=1:length(k_vec)  
    % definisco gli estremi dei sottointervalli
    x = linspace(alfa,beta,k_vec(i)+1);

    % ciclo sul sottointervallo
    for j=1:k_vec(i)

        x_in=linspace(x(j),x(j+1),l+1)';   % nodi di interpolazione 
        % Calcolo dei coeff. del polinomio interpolante
        y = f(x_in);
        a = get_polyn(x_in,y);    % coeff polinomio composito in [x_j, x_{j+1}]
      
        tnum=100;
        t((j-1)*tnum+1:j*tnum) = linspace(x(j),x(j+1),tnum);   % punti di valutazione per il grafico
        yp((j-1)*tnum+1:j*tnum)= polyval(a,t((j-1)*tnum+1:j*tnum));
    end
    subplot(2,length(k_vec),(l-1)*length(k_vec)+i)
    fplot(f,[alfa,beta],'-');
    hold on
    plot(t,yp,'r')
    legend('funzione','polinomio interpolante')
    title(['grado: ',num2str(l),' k: ',num2str(k_vec(i))])
    clear t yp
  end
end


