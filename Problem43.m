% Project Euler Problem 41. runtime: 3.3 (s)
clc; clear;
warning off; close all;
tic;

z = perms(0:9);
%a = [1 4 0 6 3 5 7 2 8 9; 4 0 6 2 3 5 1 7 9 8];

p = primes(17);
for i = 2:8
    b = dig2num(z(:,i:i+2));
    m = find(mod(b,p(i-1))==0);
    z = z(m,:);
end
format long;
ANTWOORD = sum(dig2num(z))
format short;
toc;