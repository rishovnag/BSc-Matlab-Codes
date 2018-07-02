%image8.m: Write a program to input an image and then take reflection along
%y-axis and then along x-axis. Save and display modified image.
clc;
close all;
clear all;
file1=input('\nEnter your input image file name=','s');
file2=input('Enter your Output image file name=','s');
x=imread(file1);
[r,c,d]=size(x);
y=x; %copying image in y
y(1:r,c+1:2*c,1:d)=x(1:r,c:-1:1,1:d); %taking reflection along y-axis
y(r+1:2*r,1:2*c,1:d)=y(r:-1:1,1:2*c,1:d); %taking reflection along x-axis
imshow(y);
imwrite(y,file2);
%end of program