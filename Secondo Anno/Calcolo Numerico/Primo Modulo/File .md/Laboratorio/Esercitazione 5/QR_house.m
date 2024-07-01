function [Q,R] = QR_house(A)
R=A;
[n,m]=size(A);
U=eye(n);
for k =1:m 
    x=R(k:n,k);
    a= -sign(x(1))*norm(x,2);
    v= x-a*eye(n-k+1,1);
    b=2/(v'*v);
    R(k:n,k:m)= R(k:n,k:m) - b*v*(v'*R(k:n,k:m));
    U(k:n,1:n)= U(k:n,1:n) - b*v*(v'*U(k:n,1:n));
end
Q=U';