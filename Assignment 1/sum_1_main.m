%q1_main : Write main program to call sum_1(n) function
clc;
clear all;
close all;
n=input('\nEnter n(1-20)=');
s=sum_1(n);
fprintf('\nSum=%d\n',s);
%end of main program