% Project Euler Problem 6
% runtime = 0.01 (s)
clc;
clear;
warning off;
close all;
tic;

a = [1:100];
ANTWOORD = sum(a)^2 - sum(a.^2)

toc;