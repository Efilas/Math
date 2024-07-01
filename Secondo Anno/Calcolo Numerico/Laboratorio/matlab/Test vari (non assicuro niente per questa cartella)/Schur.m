function [R,U,its]=Schur(A,tol)
k=length(A);
T=hess(A);
mu=T(k,k);
I=eye(k,k);
U=I;
its=0;
while true
    if abs(T(k,k-1))<tol
        k=k-1;
        if k<2
            break
        end
        mu=T(k,k);
    end
    its=its+1;
    [Q,R]=qr(T-mu*I);
    U=U*Q;
    T=R*Q+mu*I;
end
fprintf('errore: %e\n',norm(U'*R*U-A))