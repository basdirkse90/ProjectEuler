% Project Euler Problem 55. runtime: 17 (s)
clc; clear;
warning off; close all;
tic;
res = 0;
for x = 1:9999

    multiWaitbar('Progress', x/9999 );
    x = dig2num(fliplr(num2dig(x))) + x;
    n = 1;
    while(dig2num(fliplr(num2dig(x))) ~= x)
        x = dig2num(fliplr(num2dig(x))) + x;
        n = n+1;
        if(n>=50)
            res=res+1;
            break;
        end
    end
end

multiWaitbar( 'CloseAll' );
ANTWOORD = res


toc;