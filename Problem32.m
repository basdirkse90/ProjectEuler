% Project Euler Problem 32. runtime: 0.2 (s)

clc;
clear;
warning off;
close all;
tic;

a = perms([1:9]);
Z = zeros(1,3);
dex = 1;
for i = 1:length(a)
    x = a(i,1);
    y = a(i,2)*1000 + a(i,3)*100 + a(i,4)*10 + a(i,5);
    z = a(i,6)*1000 + a(i,7)*100 + a(i,8)*10 + a(i,9);
    if  x*y == z
        Z(dex,1) = x;
        Z(dex,2) = y;
        Z(dex,3) = z;
        dex = dex+1;
    end
    
    x = a(i,1)*10 + a(i,2);
    y = a(i,3)*100 + a(i,4)*10 + a(i,5);
    z = a(i,6)*1000 + a(i,7)*100 + a(i,8)*10 + a(i,9);
    if  x*y == z
        Z(dex,1) = x;
        Z(dex,2) = y;
        Z(dex,3) = z;
        dex = dex+1;
    end

end
A = Z(:,3);

ANTWOORD = sum(unique(A))

toc;