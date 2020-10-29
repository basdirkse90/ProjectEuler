% Project Euler Problem 3
% runtime = 0.01 (s)
clc;
clear;
warning off;
close all;
tic;

n = 600851475143 ;

p = primes(2^16);

i = find(round(n./p) == n./p,1,'last');

ANTWOORD = p(i)
toc;
