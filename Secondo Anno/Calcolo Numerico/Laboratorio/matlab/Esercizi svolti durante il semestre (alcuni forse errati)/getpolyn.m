function [a] = getpolyn(x,y,m)
n=length(x);
V=zeros(n,m);
V(:,m) = ones(n,1);
for j = m-1:-1:1
    V(:,j) = (x).*V(:,j+1);
end
c=cond(V);
fprintf('Condizionamento: %e\n', c);
a=V\y;