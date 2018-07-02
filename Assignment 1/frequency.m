function frequency(a,n)
    c=0;
    b=zeros(1);
    for i=1:n
        k=a(i);
        if k~=b(:)
            flag=0;
        else 
            flag=1;
        end
        if flag==0
                c=c+1;
                b(c)=k;
            else
                continue;
        end
        f(c)=0;
        for j=i:n
            if a(j)==k
                f(c)=f(c)+1;
            end
        end
    end
    for i=1:c
        fprintf('\nFrequency of %d = %d\n',b(i),f(i));
    end
end