%q21bas1.m - Print all numbers which are not prime
n=input('Enter n = ');
for i=1:n
   y=is_prime(i);
   if y == 0
   fprintf(' %d ',i);
   else
   continue;
   end
end
fprintf('\n');