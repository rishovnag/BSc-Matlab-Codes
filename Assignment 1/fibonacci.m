%q22as2.m - All fibonacci prime numbers till N
n=input('Enter n = ');
a=1;
b=1;
c=a+b;
fprintf(' %d %d',a,b);
while c<=n
    fprintf(' %d',c);
    a=b;
    b=c;
    c=a+b;
end
