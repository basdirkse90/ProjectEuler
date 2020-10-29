% Project Euler Problem 35. runtime: 39 (s)

clc;
clear;
warning off;
close all;
tic;

b = primes(1000000);

%a = b(find( (b>100 & b<333) | (b>1000 & b<3333) | (b>10000 & b<33333) | (b>100000 & b<333333) ));
a=b;

Z = [2 3 5 7 11 13 17 31 37 71 73 79 97];
run = length(a);
for i = 1:run
    multiWaitbar('Progress',i/run);
    str = num2str(a(i));
    t_last = str(1);
    t = str;
    x(1) = a(i);
    for k = 2:length(str)
        for j = 1:length(str)-1
            t(j) = t(j+1);
        end
        t(length(str)) = t_last;
        x(k) = str2num(t);
        if(~isprime(x(k)))
            k = 1000;
            break; 
        end
        t_last = t(1);
    end
    
    if (k ~= 1000)
        Z = [Z x];
    end
        
    
    
end

multiWaitbar('CloseAll');
ANTWOORD = length(unique(Z))

toc;