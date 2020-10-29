% Project Euler Problem 67. runtime = 0.01 (s)
clc;
clear;
warning off;
close all;
tic;

A = dlmread('Problem67.txt');
B = zeros(size(A));

B(1,1) = A(1,1);

for i = 2:length(A')
   
    b(1) = B(i-1,1)+A(i,1);
    b(i) = B(i-1,i-1)+A(i,i);
    
    for j = 2:i-1
        b(j) = max(B(i-1,j-1),B(i-1,j))+A(i,j);
    end
    
    B(i,1:i) = b;
    
end    

ANTWOORD = max(b)

toc;