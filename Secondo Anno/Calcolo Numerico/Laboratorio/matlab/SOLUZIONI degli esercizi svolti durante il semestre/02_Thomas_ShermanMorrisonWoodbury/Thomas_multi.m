function u=Thomas_multi(A,F)
% applico l'algoritmo di Thomas per risolvere il sistema lineare con più
% termini noti
%
% Au=F,  F=[f_1,...,f_p]

[n,p]=size(F);

% crea gli elementi, in modo che gli indici corrispondano!
a=diag(A);
b=[0;diag(A,-1)];
c=diag(A,1);
% prealloco
alpha=zeros(n,1);
beta=zeros(n-1,1);

% inizio la ricorrenza
alpha(1)=a(1);
for i=2:n
    beta(i)=b(i)/alpha(i-1);
    alpha(i)=a(i)-beta(i)*c(i-1);
end

% forward subsitution 'multipla'
y(1,1:p)=F(1,1:p);
for i=2:n
    y(i,1:p)=F(i,1:p) - beta(i)*y(i-1,1:p);
end

% backward subsitution 'multipla'
u(n,1:p)=y(n,1:p)/alpha(n);
for i=n-1:-1:1
    u(i,1:p) = (y(i,1:p)-c(i)*u(i+1,1:p))/alpha(i);
end
