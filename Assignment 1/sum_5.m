%q15as1.m - Sum = 1-2+3-4+5-....n
s=0;
n=input('Enter n = ');
for i=1:n
    if mod(i,2) == 0
        s=s-i;
    else 
        s=s+i;
    end
end
fprintf('The sum is = %d\n',s);