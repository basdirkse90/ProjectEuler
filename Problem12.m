% Project Euler Problem 12
% runtime = 5 (s)
clc;
clear;
warning off;
close all;
tic;

div = 0;
n = 0;
i = 1;
while(div < 500)
    n = n+i;
    i = i+1;

    div = NumberOfDivisors(n);
end

ANTWOORD = n



toc;