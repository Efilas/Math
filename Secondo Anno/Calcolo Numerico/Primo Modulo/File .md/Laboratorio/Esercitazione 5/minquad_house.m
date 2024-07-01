function [x,res] = minquad_house(A,b)
R=A;
[n,m]=size(A);
for k =1:m 
    x=R(k:n,k);
    a= -sign(x(1))*norm(x,2);
    v= x-a*eye(n-k+1,1);
    d=2/(v'*v);
    R(k:n,k:m)= R(k:n,k:m) - d*v*(v'*R(k:n,k:m));
    b(k:n)=b(k:n)-d*(v*(v'*b(k:n)));
end
x=R(1:m,1:m)\b(1:m);
res=norm(b(m+1:n));