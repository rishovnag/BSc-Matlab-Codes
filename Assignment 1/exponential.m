function exponential(x)
    format long;
    c=1;
    p=0;
    eps=abs(c-p);
    n=1;
    while eps>1e-16
        p=c;
        fact=1;
        for i=1:n
            fact=fact*i;
        end
        c=c+x^n/fact;
        n=n+1;
        eps=abs(c-p);
    end
    fprintf('\ne^%f=%f',x,c);
end