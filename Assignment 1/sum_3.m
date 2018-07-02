%q13as1.m - Sum = n+(n-2)+(n-4)+...+ upto 1 or 2 depending on odd or even
n=input('Enter n = ');
s=0;
if mod(n,2)== 0
    for i=n:-2:2
        s=s+i;
        i=i-2;
    end
else
    for i=n:-2:1
        s=s+i;
        i=i-2;
    end
end
fprintf('The sum = %d\n',s);