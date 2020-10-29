% Project Euler Problem 69. runtime = 0.01 (s)
clc;
clear;
warning off;
close all;
tic;

n = 510510;
phi_n = n;
p = unique(factor(n));

for i=1:length(p)
	phi_n = phi_n * (1 - 1/p(i));
end







toc;