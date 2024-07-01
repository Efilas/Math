function [x]=Gauss(A,b)
n=length(b);
for k=1:n-1
    m=A(k+1:n,k)/A(k,k);
    A(k+1:n,k+1:n)=A(k+1:n,k+1:n)-m*A(k,k+1:n);
    b(k+1:n)=b(k+1:n)-m*b(k);
end
U=triu(A);
x=RisolviTriangSup(U,b);
disp('divergenza: '+string(norm(x-A\b)))
end