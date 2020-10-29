% Project Euler Problem 4
% runtime = 13 (s)
clc;
clear;
warning off;
close all;
tic;

n = 1;

palindrome(1) = 0;

for i = 999:-1:317
    for j = i:-1:317
        test = i*j;
        str = int2str(test);
            if str(1) == str(6) & str(2) == str(5) & str(3) == str(4)
                palindrome(n) = test;
                n = n+1;
            end
    end
end

ANTWOORD = max(palindrome)
% 906609

toc;