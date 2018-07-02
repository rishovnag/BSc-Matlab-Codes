function s=std(a,n)
sd=0;
for i = 1:n
    sd=sd+(a(i)-avg)^2;
end
sd=sqrt(sd/n);
end
