% Project Euler Problem 14
% runtime = 35 (s)
clc;
clear;
warning off;
close all;
tic;

c = zeros(1,1e8);

for i = 1:1e6
    
    seq(1) = i;
    j = 1;
    while(seq(j)~=1)
        j=j+1;
        if(seq(j-1)<1e8 & c(seq(j-1))~=0)
            j = c(seq(j-1))+j-2;
            break;
        else
            if (mod(seq(j-1),2)==0)
                seq(j) = seq(j-1)/2;
            else
                seq(j) = 3*seq(j-1)+1;
            end
        end 
    end
    c(i) = j;
    
    for k = 2:length(seq)
        if seq(k) < 1e8
            c(seq(k)) = j+1 - k;
        end
    end
    clear seq;
end

[val ind] = max(c);

ANTWOORD = ind




toc;