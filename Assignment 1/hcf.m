%fiction h=hcf(a,b): Function to calculate hcf of 2 numbers
function h=hcf(a,b)
x=a;
y=b;
r=mod(x,y);
while r~=0
    x=y;
    y=r;
    r=mod(x,y);
end
h=y;
end