n=11;
H=2000;
X=(1:n);
Y=rand(n,1).*H;
[coeff] = interpol(X',Y);
fnc=@(t) polyval(polyfit(X,Y,length(X)-1),t);
fplot(fnc,[1,n]);
legend('punti','mia','built in');
% scap.pa.scap.pa.vat.te.ne.vi.a.da.qui.
% ma.i.splen.de.ra.iin.un.pos.to.co.sì.