clc;
clear;
close all;
file1=input('Enter the name of the input audio file : ','s');
n=input('Enter the number of files you want to split the audio file into : ');
[y,fs,nbit]=wavread(file1);
[x,d]=size(y);
str='aud';
x1=1;
x2=x/n;
for i=1:n
    tmp=strcat(str,num2str(i),'.wav');
    a1(1:x/n)=y(x1:x2);
    wavwrite(a1,fs,tmp);
    x1=x2+1;
    x2=x2+x/n;
end



    