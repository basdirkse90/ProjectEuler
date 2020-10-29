% Project Euler Problem 33. runtime: 2.7 (s)

clc;
clear;
warning off;
close all;
tic;
Z = [];
for i = 10:99
    for j = i+1:99
        a = i/j;
        str = intersect(num2str(i),num2str(j));
        if length(str) == 1 & str(1) ~= '0'
            stri = setdiff(num2str(i),str);
            strj = setdiff(num2str(j),str);
            if length(stri) == 1 & length(strj) == 1
                b = str2num(stri)/str2num(strj);
            else
                b = -1;
            end
        else
            b = -1;
        end
        
        if a == b
            Z = [Z; i j];
        end
        
        clear a b stri strj str;
        
    end
end

ANTWOORD = rats(prod(Z(:,1))/prod(Z(:,2)))

toc;
        
     