A=randn(10,6);
[Q,R]=QR_house(A);
[n,m]=size(A);
format long
display([norm(eye(size(Q))-(Q'*Q),2), norm(A-Q*R,2), cond(A), cond(R)])
display(cond(A)-cond(R))