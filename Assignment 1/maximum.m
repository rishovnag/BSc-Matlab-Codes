function [i,j]=maximum(a,n)
am=abs(a(1,2));
ii=1;
jj=2;
    for i1=1:n
        for j1=i1+1:n
            if abs(a(i1,j1))>am
                ii=i1;
                jj=j1;
                am=abs(a(i1,j1));
            end
        end
    end
    i=ii;
    j=jj;
end
