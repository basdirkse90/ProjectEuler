% Project Euler Problem 53. runtime: 2.0 (s)
clc; clear;
warning off; close all;
tic;
res = 0;
for n = 23:100
    k = ceil(n/2);
    while(nchoosek(n,k) > 1e6)
        k = k+1;
    end
    res = res + (k-1)*2 - n + 1;
end

ANTWOORD = res

toc;
    