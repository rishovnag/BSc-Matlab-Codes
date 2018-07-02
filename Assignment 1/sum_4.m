%q14as1.m - Product = 1*2*3....*n
n=input('Enter n = ');
p=1;
for i=1:n
   p=p*i;
end
fprintf('Product of the series is = %d\n',p);