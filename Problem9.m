% Project Euler Problem 9
% runtime = 0.02 (s)
clc;
clear;
warning off;
close all;
tic;

for c = 1000:-1:334
    for b = min(c-1,999-c):-1:floor(min(c-1,999-c)/2)
        a = 1000 - c - b;
        
        if a^2 + b^2 == c^2
            pyth = [a b c]
            ANTWOORD = pyth(1)*pyth(2)*pyth(3)
            break;
            break;
        end
    end
end







toc;