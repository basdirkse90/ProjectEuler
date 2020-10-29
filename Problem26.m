% Project Euler Problem 26
% runtime = 4 (s)
clc;
clear;
warning off;
close all;
tic;

for d = 1:1000
    a = char(vpa(1/d,1100));
    
    i = 1;
    if (length(a) > 25)
        while sum(a(17:25) == a(17+i:25+i)) ~= 9
            i = i+1;
            if 25+i >= length(a)
                i = 0;
                break;
            end
        end
    end

    z(d) = i;
end

[val ind] = max(z);

ANTWOORD = ind

toc;