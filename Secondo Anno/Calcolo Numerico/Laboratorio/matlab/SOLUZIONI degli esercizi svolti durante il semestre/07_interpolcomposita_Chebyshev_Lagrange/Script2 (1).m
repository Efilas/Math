% esercizio 2
clear all
close all

alfa=0; beta=2;

k=10;    % # intervalli
% definisco gli estremi dei sottointervalli
x = linspace(alfa,beta,k+1);
i=1;

% ciclo sul grado
for l=1:3

  % ciclo sul sottointervallo
  for j=1:k

      x_in=linspace(x(j),x(j+1),l+1)';   % nodi di interpolazione 
      % Calcolo dei coeff. del polinomio interpolante
      y = humps(x_in);
      a = get_polyn(x_in,y);    % coeff polinomio composito in [x_j, x_{j+1}]
      
      tnum=100;
      t((j-1)*tnum+1:j*tnum) = linspace(x(j),x(j+1),tnum);   % punti di valutazione per il grafico
      yp((j-1)*tnum+1:j*tnum)= polyval(a,t((j-1)*tnum+1:j*tnum));
  end
  subplot(1,3,i)
  fplot(@humps,[alfa,beta],'-');
  hold on
  plot(t,yp,'r')
  legend('funzione','polinomio interpolante')
  title(['grado: ',num2str(l)])
  i=i+1;

end


% fisso il grado del polinomio interpolante
l=2;
Err_tot_old=1;
for k=1:10

    % fisso il passo e costruisco i miei intervallini utilizzandolo
    h = (beta-alfa)/2^k;
    x = (alfa:h:beta)';

    for j=1:length(x)-1         % length(x)-1 corrisponde al # intervallini

      x_in=linspace(x(j),x(j+1),l+1)';   % nodi di interpolazione
      % Calcolo dei coeff. del polinomio interpolante
      y = humps(x_in);
      a = get_polyn(x_in,y,1);    % coeff polinomio composito in [x_j, x_{j+1}]
      
      % Approssimazione dell'errore nell'intervallo j-esimo
      t = linspace(x(j),x(j+1),10000);
      yp= polyval(a,t);
      Err_max(j)=max(abs( humps(t)-yp ));
    end
    Err_tot=max(Err_max);
    p = 1/log(1/2)*log( Err_tot/Err_tot_old);
    Err_tot_old=Err_tot;      

    fprintf('Passo: %e, Err: %e, p: %e\n',h,Err_tot,p) 
end