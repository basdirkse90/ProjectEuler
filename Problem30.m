% Project Euler Problem 30
% runtime = 93 (s)
clc;
clear;
warning off;
close all;
tic;


z = 0;
for i = 2:2e5
    multiWaitbar('Progres',i/2e5);
    s = num2str(i);
    t = 0;
    for j = 1:length(s)
        t = t + str2num(s(j))^5;
    end
    
    if (t==i)
        z = z+i;
    end
end

multiWaitbar('CloseAll');

ANTWOORD = z



toc;