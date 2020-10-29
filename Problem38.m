% Project Euler Problem 38. runtime: 353 (s)
clc; clear;
warning off; close all;
tic;

a = perms(1:9);
a = sortrows(a);
a = a(322561:362880,:);
a = flipud(a);

t2 = dig2num(a(:,1:2));
test2 = t2==dig2num(a(:,3:4))/2 & t2==dig2num(a(:,5:6))/3 & dig2num(a(:,7:9))/4;

t3 = dig2num(a(:,1:3));
test3 =  t3 == dig2num(a(:,4:6))/2 & t3 == dig2num(a(:,7:9))/3;

test4 = dig2num(a(:,1:4))==dig2num(a(:,5:9))/2;

test = test2 | test3 | test4;

ANTWOORD = dig2num(a(find(test,1,'first'),:))


toc;