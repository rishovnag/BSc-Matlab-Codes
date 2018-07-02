clc;
clear all;
close all;
file1=input('\nEnter input filename=','s');
n=input('\nEnter no. of splits along x axis=');
x=imread(file1);
[r,c,d]=size(x);
r1=fix(r/n);
r2=r-(n-1)*r1;
for i=1:n-1
    y(1:r1,1:c,1:d)=x((i-1)*r1+1:i*r1,1:c,1:d);
    f=strcat('split',num2str(i));
    f=strcat(f,'.jpg');
    imwrite(y,f);
end
y(1:r2,1:c,1:d)=x(r-r2+1:r,1:c,1:d);
f=strcat('split',num2str(n));
f=strcat(f,'.jpg');
imwrite(y,f);