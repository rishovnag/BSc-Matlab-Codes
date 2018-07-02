clc;
clear all
close all
n=input('\nEnter number to be converted=','s');
b=input('\nEnter base in which the number is=');
output=base2dec(n,b);
display(output);