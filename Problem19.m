% Project Euler Problem 19
% runtime = 0.01 (s)
clc;
clear;
warning off;
close all;
tic;

fdom = zeros(36890,1);

year = 1900;

month(1) = 31;
month(3) = 31;
month(4) = 30;
month(5) = 31;
month(6) = 30;
month(7) = 31;
month(8) = 31;
month(9) = 30;
month(10) = 31;
month(11) = 30;
month(12) = 31;

i = 1;
fdom(i) = 1;
while year <=2000 

    if (mod(year,100)~=0 & mod(year,4)==0) | mod(year,400)==0
        month(2) = 29;
    else
        month(2) = 28;
    end
    
    for k = 1:12
        i = i + month(k);
        fdom(i) = 1;
    end
    year = year + 1;
end

sunday = zeros(size(fdom));
for i = 7:7:length(sunday)
    sunday(i) = 1;
end

sunday(1:365) = zeros(365,1);
fdom(1:365) = zeros(365,1);

ANTWOORD = length(find(sunday & fdom))




toc;