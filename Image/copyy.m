%xximage2.m : Write a prgram to read an image file and number of times(n)
%to be copied. Create one output image file where you have to copy original
%image 'n' times along y-axis
clc;
close all;
clear all;
file1=input('\nEnter your image file name=','s');
file2=input('\nEnter Output image file name=','s');
n=input('Enter number of times image to be copied(along y-axis)=');
x=imread(file1);
[r,c,d]=size(x);
r1=1;
r2=r;
for i=1:n
    y(r1:r2,1:c,1:d)=x(1:r,1:c,1:d);
    r1=r1+r;
    r2=r2+r;
end
imshow(y);
imwrite(y,file2);
%End of program