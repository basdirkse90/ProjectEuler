% Project Euler Problem 22
% runtime = 0.5 (s)
clc;
clear;
warning on;
close all;
tic;

names = sort(textread('Problem22.txt','%q','delimiter',','));


for i = 1:length(names)
    w = 0;
    for j = 1:length(names{i})
        w = w + cast(unicode2native(names{i}(j)),'double') - 64;
    end
    z(i) = w*i;
end

ANTWOORD = sum(z)


toc;