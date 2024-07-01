f=@(x)humps(x);
C=['g','b','r'];
figure
hold on
int=linspace(0,2,11)';
for k=[1,2,3]
    fprintf('grado:%d\n',k);
    %COEFF=zeros(length(int),k+1);
    for j=1:length(int)-1
        H=linspace(int(j),int(j+1),k+1)';
        %COEFF(j+1,1:k+1)=get_polyn(H,f(H),k); 
        [a]=getpolyn(H,f(H),k+1); 
        t=linspace(H(1),H(length(H)));
        y=polyval(a,t);
        plot(t,y,C(k));
    end
end
fplot(f,[0,2],'--k')