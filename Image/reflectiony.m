%xximage5.m : Write a prgram to take reflection of an image along y=axis

clc;
close all;
clear all;
file1=input('\nEnter your image file name=','s');
file2=input('\nEnter Output image file name=','s');
x=imread(file1);
[r,c,d]=size(x);
y=x;%copying x to y

%To take reflection along y-axis
y(1:r,c+1:2*c,1:d)=x(1:r,c:-1:1,1:d);
imshow(y);
imwrite(y,file2);
%End of program