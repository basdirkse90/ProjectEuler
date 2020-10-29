% Project Euler Problem 70. runtime = 0.01 (s)
clc;
clear;
warning off;
close all;
tic;

n = 8319823;

p = unique(factor(n));
phi = n*prod(1-1./p);

n
phi



toc;