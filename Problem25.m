% Project Euler Problem 25
% runtime = 0.01 (s)
clc;
clear;
warning on;
close all;
tic;

f(1) = 1;
f(2) = 1;

n = 1;
i = 3;
while n<=999
    f(i) = f(i-1) + f(i-2);
    
    
    if (f(i) > 10)
        f(i) = f(i)/10;
        f(i-1) = f(i-1)/10;
        n = n+1;
    end
    i = i+1;
end

ANTWOORD = i-1

toc;