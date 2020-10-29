% Project Euler Problem 59. runtime: 0.0001 (s)
clc; clear;
warning off; close all;
tic;

n = 1:22;
l = ceil(10.^((n-1)./n));

ANTWOORD = sum(10 - l)


toc;

