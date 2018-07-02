%xxaudio4.m : Write a program to input any audio file and change the
%speed of the  audio file
% Play new audio file and also save it.
clc;
clear all;
close all;
file1=input('\nEnter input audio file name=','s');
file2=input('Enter Output audio file name=','s');
n=input('intensity factor(>1 to increse tempo and <1 to decrese tempo');
[x,fs,nbits]=wavread(file1);
[nx,d]=size(x);
fprintf('nx=%d fs=%d nbits=%d\n',nx,fs,nbits);
plot(x);
sound(x,n*fs);
wavwrite(x,n*fs,file2);
%end of program
