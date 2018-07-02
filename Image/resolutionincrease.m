clc;
clear;
close all;
file1=input(' Enter input image file name ','s');
n=input(' Enter the scale ');
im1=imread(file1);
[r,c,d]=size(im1);
r1=1;
c1=1;
j=1;
 for i=1:r 
         for kr=1:n
             for kc=0:c-1
                 for k=1:n
                 y(r1,c1,1:d)=im1(i,j+kc,1:d);
                 c1=c1+1;
                 end
             end
             r1=r1+1;
             c1=1;
         end
 end
 imagesc(y);
 
        
                 