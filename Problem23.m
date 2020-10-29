% Project Euler Problem 23
% runtime = 24 (s)
clc;
clear;
warning on;
close all;
tic;
y = [];

N = 28123;

multiWaitbar('CloseAll');
multiWaitbar('Creating Abundant numbers',0);
multiWaitbar('Finding...',0);

for a = 1:N
    multiWaitbar('Creating Abundant numbers',a/N);
    if(isAbundant(a))
        y = [y a];
    end
end
z = 1:N;
for i = 1:length(y)
    multiWaitbar('Finding...',i/length(y));
    for j = 1:length(y)
        expr(j) = y(i) + y(j);
    end
    z = setdiff(z,expr);
end


ANTWOORD = sum(z)
multiWaitbar('CloseAll');

toc;