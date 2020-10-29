% Project Euler Problem 34. runtime: 0.5 (s)

clc;
clear;
warning off;
close all;
tic;

% a=0;
% for i = 10:1e4
%     if i == sum(factorial(num2str(i) - '0'));
%         a = a+i;
%     end
% end

a = 0:9;
A = factorial(a);
Z = [];
for i = 2:6
    s = combn(a,i);
    t = sum(factorial(s),2);
    
    K = find(t == dig2num(s));
    
    for j = 1:length(K)
        if s(K(j),1) ~= 0
            Z = [Z; t(K(j))];
        end
    end
    
    
    
end

ANTWOORD = sum(Z)

toc;