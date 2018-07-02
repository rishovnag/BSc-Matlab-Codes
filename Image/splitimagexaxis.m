clc;
clear all;
close all;
file1=input('\nEnter input filename=','s');
n=input('\nEnter no. of splits along x axis=');
x=imread(file1);
[r,c,d]=size(x);
c1=fix(c/n);
c2=c-(n-1)*c1;
for i=1:n-1
    y(1:r,1:c1,1:d)=x(1:r,(i-1)*c1+1:i*c1,1:d);
    f=strcat('split',num2str(i));
    f=strcat(f,'.jpg');
    imwrite(y,f);
end
y(1:r,1:c2,1:d)=x(1:r,c-c2+1:c,1:d);
f=strcat('split',num2str(n));
f=strcat(f,'.jpg');
imwrite(y,f);