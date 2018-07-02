clc;
clear all
close all
n=input('\nEnter decimal number to be converted= ');
b=input('\nEnter base to be converted to= ');
output=dec2base(n,b);
display(output);