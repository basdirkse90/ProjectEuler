% Project Euler Problem 28
% runtime = 0.01 (s)
clc;
clear;
warning off;
close all;
tic;

a = 1;
for i = 3:2:1001
    a = a + sum([(i-2)^2+(i-1) : i-1 : i^2]);
end

ANTWOORD = a

toc;
