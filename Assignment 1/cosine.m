%function csin=sine(x): Function to calculate cos(x)
function csin=cosine(x)
format long;
xrad=x*pi/180;
csin=1;
psin=0;
eps=abs(csin-psin);
n=2;
sf=-1;
while eps>1e-16
    psin=csin;
    fact=1;
    for i=1:n
        fact=fact*i;
    end
    csin=csin+sf*xrad^n/fact;
    eps=abs(csin-psin);
    sf=-sf;
    n=n+2;
end
end
