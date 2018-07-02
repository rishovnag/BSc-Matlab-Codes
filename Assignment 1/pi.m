format long;
c=1;
p=0;
eps=abs(c-p);
n=1;
sf=-1;
while eps>1e-16
    p=c;
    c=c+sf*3^(-n)/(2*n+1);
    eps=abs(c-p);
    n=n+1;
    sf=-sf;
end
c=3^0.5*2*c;
fprintf('\nPI=%.15f\n',c);