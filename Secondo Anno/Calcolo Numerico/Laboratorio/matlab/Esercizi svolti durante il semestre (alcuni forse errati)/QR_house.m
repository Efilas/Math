function [Q,R] = QR_house(A)
[n,m]=size(A);
R=A;
U=eye(n);
for k=1:m
    x=R(k:n,k);
    ah=-sign(x(1))*norm(x);
    v=x-ah*[1;zeros(n-k,1)];
    bh=2/(v'*v);
    R(k:n,k:m)=R(k:n,k:m)-bh*v*(v'*R(k:n,k:m));
    U(k:n,1:n)=U(k:n,1:n)-bh*v*(v'*U(k:n,1:n));
end
Q=U';
% verifica con
% A=randn(10,6);
% [Q,R] = QR_house(A);
% q=Q'*Q;
% disp([norm(eye(size(q))-q),norm(A-Q*R),cond(A),cond(R)])
end