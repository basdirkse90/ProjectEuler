% Project Euler Problem 47. runtime: 3.3 (s)
clc; clear;
warning off; close all;
tic;
n = 1;
found = 0;
while(found==0)
    n=n+1;
    a = factor_unique(n);
    b = factor_unique(n+1);
    if(length(a)==4 & length(b)==4)
        if(length(intersect(a,b))==0)
            ab = [a b];
            c = factor_unique(n+2);
            if(length(intersect(ab,c))==0 & length(c)==4)
                abc = [ab c];
                d = factor_unique(n+3);                
                if(length(intersect(abc,d))==0 & length(d)==4)
                    found = 1;                
                end
            end
        end
    
    end
end


ANTWOORD = n





toc;