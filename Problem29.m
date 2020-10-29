% Project Euler Problem 29
% runtime = 12 (s)
clc;
clear;
warning off;
close all;
tic;

z = [];
for a = 2:100
    multiWaitbar('Progress',a/100);
    for b = 2:100
        temp(b-1) = a^b;
        z = [z temp];
    end
    clear temp;
end

multiWaitbar('CloseAll');

ANTWOORD = length(unique(z))


toc;