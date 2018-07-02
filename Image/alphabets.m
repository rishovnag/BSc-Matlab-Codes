%xximage10.m : Write a program extract alphabets from any text
clc;
close all;
clear all;
file1=input('\nEnter your image File Name=','s');
file2=input('Enter B/W output File Name=','s');
file3=['1.jpg';'2.jpg';'3.jpg';'4.jpg';'5.jpg';'6.jpg';'7.jpg';'8.jpg';'9.jpg'];
x=imread(file1);
[r,c,d]=size(x);
fprintf('\nr=%d c=%d d=%d\n',r,c,d);
% To convert RGB to Gray scale
y(1:r,1:c,1)=.2989*x(1:r,1:c,1)+.5870*x(1:r,1:c,2)+.114*x(1:r,1:c,3);
% To convert gray scale to B/W
for i=1:r
    for j=1:c
        if y(i,j,1)>=127
            z(i,j,1)=255;
        else
            z(i,j,1)=0;
        end
    end
end
imshow(z);
imwrite(z,file2); % Writing B/W image in file2
% To extract characters
n1=0; % n1=number of characters
cs1=1;  % cs1=starting character column position
cs2=0;  % cs2=ending character column position
while n1<5
        for j=cs1:c
            flag=1;
            for i=1:r
                if z(i,j,1)==0
                    flag=0;
                    cs1=j;
                    break;
                end
            end
                if flag==0
                    break;
                end
        end
            for j=cs1+1:c
                flag=1;
                for i=1:r
                    if z(i,j,1)==0
                        cs2=j;
                        flag=0;
                    end
                end
                if flag==1
                    break;
                end
            end
            z1(1:r,1:cs2-cs1+1,1)=z(1:r,cs1:cs2,1);
            n1=n1+1;
            cs1=cs2+1;
            fprintf('cs1=%d cs2=%d n1=%d\n',cs1,cs2,n1);
            imwrite(z1,file3(n1,:));
            % To refresh z1 matrix
            for i=1:r
                for j=1:c
                    z1(i,j,1)=255;
                end 
            end
            %imshow(z1);
end
                    
                    
    
    
    
    






