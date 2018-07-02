clc;
clear;
close all;
exp1=input(' Enter the post fix expression ','s');
%conversion into infix expression
len=numel(exp1);
count=1;
for i=1:len    
    if isstrprop(exp1(i),'digit')==1
        s(count)=str2num(exp1(i));
        count=count+1;
    elseif isstrprop(exp1(i),'digit')~=1 && count<=2
        fprintf(' Error in expression ');
    else
        if exp1(i)=='+'
            tmp=s(count-2)+s(count-1);
        elseif exp1(i)=='-'
            tmp=s(count-2)-s(count-1);
        elseif exp1(i)=='*'
            tmp=s(count-2)*s(count-1);
        elseif exp1(i)=='/'
            tmp=s(count-2)/s(count-1);
        elseif exp1(i)=='^'
            tmp=realpow(s(count-2),s(count-1));
        end
        s(count-2)=tmp;
        count=count-1;
    end
end
disp(s(1));
        
        
