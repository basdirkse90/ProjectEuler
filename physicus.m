clc;clear;close all; tic;
telnum = [0 1379 2468 1379 2468 5 2468 1379 2468 1379];

dig7 = num2dig(telnum(7));
dig8 = num2dig(telnum(8));
dig9 = num2dig(telnum(9));
dig10 = num2dig(telnum(10));

[a,b,c,d] = meshgrid(dig10,dig9,dig8,dig7);
p = [a(:) b(:) c(:) d(:)];

p=dig2num(p);

q = find(mod(p,4)==0);
p(q)













toc;