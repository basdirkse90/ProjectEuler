% Project Euler Problem 24
% runtime = 6 (s)
clc;
clear;
warning on;
close all;
tic;

y = perms([9:-1:0]);
y = sortrows(y);
a = y(1e6,:);

p = logspace(9,0,10);

format long
ANTWOORD = sum(a.*p)
format short





toc;