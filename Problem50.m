% Project Euler Problem 50. runtime: 2.0 (s)
clc; clear;
warning off; close all;
tic;
n = 0;
res = 0;
p = primes(1e6);

i = 1;
j = 546;

while (j - i > 20)
    while (sum(p(i:j+1)) > 1e6)
        if(ismember(sum(p(i:j)),p) & j-i+1 > n)
            res = sum(p(i:j));
            n = j-i+1;
            break;
        end
        i = i + 1;
    end
    j = j + 1;
end

ANTWOORD = res
toc;

