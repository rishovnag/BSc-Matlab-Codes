clc;
clear all;
close all;
file1=input('\nEnter first input filename=','s');
file2=input('\nEnter second input filename=','s');
file3=input('\nEnter output filename=','s');
x1=imread(file1);
x2=imread(file2);
[m1,n1,d1]=size(x1);
[m2,n2,d]=size(x2);
%a=uint8(zeros(m1,n1,d));
r=1;
m=max(m1,m2);
n=max(n1,n2);
for i=1:m
    c=1;
    for j=1:n
        if(i>m1 || j>n1)
            a(r,c+1,1:d)=x2(i,j,1:d);
            a(r+1,c,1:d)=x2(i,j,1:d);
            a(r+1,c+1,1:d)=x2(i,j,1:d);
            a(r,c,1:d)=x2(i,j,1:d);
        elseif(i>m2 || j>n2)
            a(r,c,1:d)=x1(i,j,1:d);
            a(r+1,c+1,1:d)=x1(i,j,1:d);
            a(r+1,c,1:d)=x1(i,j,1:d);
            a(r,c+1,1:d)=x1(i,j,1:d);
        else
        a(r,c,1:d)=x1(i,j,1:d);
        a(r+1,c+1,1:d)=x1(i,j,1:d);
        a(r,c+1,1:d)=x2(i,j,1:d);
        a(r+1,c,1:d)=x2(i,j,1:d);
        end
        c=c+2;
    end
    r=r+2;
end

imshow(a);
imwrite(a,file3);