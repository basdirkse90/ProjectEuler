% Project Euler Problem 13
% runtime = 0.03 (s)
clc;
clear;
warning off;
close all;
tic;

D = vpa(dlmread('Problem13.txt'),50);

ANTWOORD = vpa(sum(D)*1e-42,9)


toc;