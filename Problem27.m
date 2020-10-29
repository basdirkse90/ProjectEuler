% Project Euler Problem 27
% runtime = 121 (s)
clc;
clear;
warning off;
close all;
tic;

p = primes(1e6);
nMax = 0;
prod = 0;
lowp = primes(1000);

for i = 1:length(lowp)
    b = lowp(i);
    multiWaitbar('progress',i/length(lowp));
    for a = 1-b:1000
        n = 1;
        while sum(ismember(p,n^2 + a*n + b))
            n = n+1;
        end
        if n > nMax
            nMax = n;
            prod = a*b;
        end
    end
end

ANTWOORD = prod
multiWaitbar('CloseAll');

toc;