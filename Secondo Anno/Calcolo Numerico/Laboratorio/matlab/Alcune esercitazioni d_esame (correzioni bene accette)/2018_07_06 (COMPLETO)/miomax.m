function [vmax,imax]=miomax(v)
R=[0,0];
for i=1:length(v)
    if abs(v(i))>R(1)
        R=[abs(v(i)),i];
    end
end
vmax=R(1);imax=R(2);