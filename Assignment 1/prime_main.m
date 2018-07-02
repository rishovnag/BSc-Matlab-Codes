clc;
clear all;
n=input('\nEnter N(<=1000) = ');
fprintf('\nThe prime numbers till %d are :',n);
for i=2:n
    if is_prime(i)==1
        fprintf(' %d ',i);
    end
end
fprintf('\n');