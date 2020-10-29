% Project Euler Problem 16
% runtime = 0.02 (s)
clc;
clear;
warning off;
close all;
tic;

a = vpa(2^1000,1000);
str = char(a);

x = 0;
for i = 1:302
    x=x+str2num(str(i));
end

ANTWOORD = x

toc;