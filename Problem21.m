% Project Euler Problem 21
% runtime = 27 (s)
clc;
clear;
warning on;
close all;
tic;

z=1;
for i = 2:10000
    a = sum(Divisors(i)) - i;
    b = sum(Divisors(a)) - a;
    
    if (i == b & a~=i)
        z = z + a + b;
    end
    
end

ANTWOORD = z/2

toc;