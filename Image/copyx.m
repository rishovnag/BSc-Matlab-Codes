%xximage2.m : Write a prgram to read an image file and number of times(n)
%to be copied. Create one output image file where you have to copy original
%image 'n' times along x-axis
clc;
close all;
clear all;
file1=input('\nEnter your image file name=','s');
file2=input('\nEnter Output image file name=','s');
n=input('Enter number of times image to be copied(along x-axis)=');
x=imread(file1);
[r,c,d]=size(x);
c1=1;
c2=c;
for i=1:n
    y(1:r,c1:c2,1:d)=x(1:r,1:c,1:d);
    c1=c1+c;
    c2=c2+c;
end
imshow(y);
imwrite(y,file2);
%End of program