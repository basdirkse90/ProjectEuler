% Project Euler Problem 36. runtime: 353 (s)
clc; clear;
warning off; close all;
tic;
Z = [];
for i = 1:999999
    multiWaitbar('Progress',i/999999);
    a = num2str(i);
    if (sum(a == fliplr(a)) == length(a))
        b = dec2bin(i);
        if (sum(b == fliplr(b)) == length(b))
            Z = [Z i];
        end
    end   
end
multiWaitbar('CloseAll');
ANTWOORD = sum(Z)
toc;