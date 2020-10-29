% Project Euler Problem 49. runtime: 0.4 (s)
clc; clear;
warning off; close all;
tic;

a = setdiff(primes(9999),primes(999));

A = num2dig(a');
j = 1;
for i = 1:length(A)
    x = perms(A(i,:));
    x = dig2num(x);
    x = unique(x);
    y = ismember(x,a);
    if(sum(y)>=3)
       Z = x(y);
       
       for j = length(Z):-1:3
           dif = Z(j) - Z(j-1);
           for k = j-2:-1:1
                if(Z(j-1)-Z(k)==dif)
                    ANTWOORD = [Z(j) Z(j-1) Z(k)];                  
                end
           end
       end
       
    end
end

ANTWOORD = fliplr(ANTWOORD)

toc;