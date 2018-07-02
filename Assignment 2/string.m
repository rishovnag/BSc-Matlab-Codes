%prob_1.m : Write a program to calcu;ate (i) number of vowels
%(ii) number of consonents, (iii) number of words, (iv) number
% of special characters in a sentence
clc;
close all;
clear all;
str1=input('\nEnter any sentence=','s');
n=length(str1);
fprintf('\nLength of <%s>=%d\n',str1,n);
% To calculate number of vowels
nv=0;
for i=1:n
    y1=upper(str1(i));
    if y1=='A' || y1=='E' || y1=='I' || y1=='O' || y1=='U'
        nv=nv+1;
    end
end
fprintf('\nNumber of vowels=%d\n',nv);
% To calculate number of consonants
nl=0; % nl=number of alphabets
for i=1:n
    y1=upper(str1(i));
    if y1>='A' && y1<='Z'
        nl=nl+1;
    end
end
nc=nl-nv;
fprintf('\nNumber of consonants=%d number of alphabets=%d\n',nc,nl);
% To calculate number of numerals

nn=0;
for i=1:n
    y1=str1(i);
    if y1>='0' && y1<='9'
        nn=nn+1;
    end
end
fprintf('Number of numerals=%d\n',nn);
ns=n-(nl+nn);
fprintf('\nNumber of special characters=%d\n',ns);
% To calculate number of words
nw=0;
flag=1;
for i=1:n
    y1=str1(i);
    y2=upper(y1);
    if y2>='A' && y2<='Z'
        if flag==1
            nw=nw+1;
            flag=0;
        end
        fprintf('%c',y1);
    elseif flag==0
        fprintf('\n');
        flag=1;
    end
end
fprintf('\nNumber of words=%d\n',nw);





