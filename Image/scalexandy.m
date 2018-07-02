clc;
clear all;
close all;
file1=input('\nEnter input filename=','s');
file2=input('\nEnter output filename=','s');
n1=input('\nEnter scale along x axis=');
n2=input('\nEnter scale along y axis=');
x=imread(file1);
[r,c,d]=size(x);
for i=1:n1
    y(1:r,i:n1:n1*c,1:d)=x(1:r,1:c,1:d);
end
for i=1:n2
    z(i:n2:n2*c,1:c,1:d)=y(1:r,1:c,1:d);
end
imshow(z);
imwrite(z,file2);