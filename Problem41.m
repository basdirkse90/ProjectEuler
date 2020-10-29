% Project Euler Problem 41. runtime: 0.01 (s)
clc; clear;
warning off; close all;
tic;



a = perms(1:5);
b = perms(1:6);
c = perms(1:7);


x = [dig2num(a); dig2num(b); dig2num(c)];

x = flipud(sort(x));

for i = 1:1:length(x)
    if(sum(isprime(x(i))) > 0)
        ANTWOORD = x(i)
        break;
    end
end




toc;