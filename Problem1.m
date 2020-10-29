% Project Euler Problem 1
% runtime = 0.01 (s)
clc;
clear;
warning off;
close all;
tic;


a = 1:999;

b = a/3;
c = a/5;

z = b==round(b) | c==round(c);

ANTWOORD = sum(find(z))

toc;