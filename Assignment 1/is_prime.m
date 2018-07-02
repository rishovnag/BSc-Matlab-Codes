%function y=is_prime(n): Function to test whether 'n' is prime or not a
%prime
function y=is_prime(n)
n1=fix(n/2);
y=1;
for i=2:n1
    r=mod(n,i);
    if r==0
        y=0;
        break;
    end
end
end