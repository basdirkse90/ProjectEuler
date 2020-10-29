% Project Euler Problem 2
% runtime = 0.01 (s)
clc;
clear;
warning off;
close all;
tic;

f(1) = 1;
f(2) = 2;

n = 3;

while f(n-1) + f(n-2) < 4e6
    f(n) = f(n-1) + f(n-2);
    n = n + 1;
end
    
for i = 1:length(f)
    if f(i)/2 ~= round(f(i)/2)
        f(i) = 0;
    end
end

ANTWOORD = sum(f)
toc;