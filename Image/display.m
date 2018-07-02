%xximage1.m : Write a prgram to read an image and display the same image
%on screen. Save the pixels in another output file
clc;
close all;
clear all;
file1=input('\nEnter your image file name=','s');
file2=input('\nEnter Output image file name=','s');
x=imread(file1);
[r,c,d]=size(x);
fprintf('\nr=%d c=%d d=%d\n',r,c,d);
image(x);
imwrite(x,file2);
%End of program