%function number_to_roman(n) : Function to convert number to roman
function number_to_roman(n)
u=['I   ';'II  ';'III ';'IV  ';'V   ';'VI  ';'VII ';'VIII';'IX  '];
t=['X   ';'XX  ';'XXX ';'XL  ';'L   ';'LX  ';'LXX ';'LXXX';'XC  '];
h=['C   ';'CC  ';'CCC ';'CD  ';'D   ';'DC  ';'DCC ';'DCCC';'CM  '];
th=['M  ';'MM ';'MMM'];
fprintf('%d: ',n);
%To extract all digits from n
if n<10
    nt1=0;
    nt2=n;
    fprintf('%s ',u(nt2,:));
elseif n<100
    nt1=fix(n/10);
    fprintf('%s ',t(nt1,:));
    nt2=mod(n,10);
    if nt2==0
        fprintf(' ');
    else
    fprintf('%s ',u(nt2,:));
    end
elseif n<1000
    nt1=fix(n/100);
    fprintf('%s ',h(nt1,:));
    n=mod(n,100);
    nt2=fix(n/10);
    if nt2==0
        fprintf(' ');
    else
        fprintf('%s ',t(nt2,:));
    end
    nt3=mod(n,10);
    if nt3==0
        fprintf(' ');
    else
        fprintf('%s ',u(nt3,:));
    end
else
    nt1=fix(n/1000);
    fprintf('%s ',th(nt1,:));
    n=mod(n,1000);
    nt2=fix(n/100);
    if nt2==0
        fprintf(' ');
    else
        fprintf('%s ',h(nt2,:));
    end
    nt3rem=mod(n,100);
    nt3=fix(nt3rem/10);
    if nt3==0
        fprintf(' ');
    else
        fprintf('%s ',t(nt3,:));
    end 
    nt4=mod(nt3rem,10);
    if nt4==0
        fprintf(' ');
    else
        fprintf('%s ',u(nt4,:));
    end
end
