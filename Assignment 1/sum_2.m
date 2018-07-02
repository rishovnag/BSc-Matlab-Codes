%q12as1.m - 1^2+2^2+3^2+...+n^2
s=0;
n=input('Enter the value of n = ');
for i=1:n
    s=s+i^2;
end
fprintf('The sum till %d terms of the series is = %d\n',n,s);