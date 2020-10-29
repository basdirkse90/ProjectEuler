% Project Euler Problem 5
% runtime = 0.01 (s)
clc;
clear;
warning off;
close all;
tic;

a = 20;
num = 1;

for i = 2:a
    if(mod(num,i)~=0)
        t = [2:i];
        M = mod(i,t);
        multiplier = find(M == 0,1,'first')+1;
        num=num*multiplier;
    end
end

num


toc;
