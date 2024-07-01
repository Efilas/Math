function [a] = get_polyn(x,y,M)
m=M+1;
n=length(x);
V=zeros(n,m);
V(:,m) = ones(n,1);
for j = m-1:-1:1
    V(:,j) = (x)'.*(V(:,j+1));
end
%disp(V);
%c=cond(V);
%fprintf('Condizionamento: %e\n', c);
a=V\y';