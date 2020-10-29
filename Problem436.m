% Project Euler Problem 436
% runtime = .. (s)
clc;
clear;
warning on;
close all;
tic;

W=0;
R=1e5;

for i=1:R
	S = 0;
	while(S<=1);
		x = rand(1);
		S = S + x;
	end
	while(S<=2)
		y = rand(1);
		S = S + y;
	end
	if(y>x)
		W = W+1;
	end
end

W/R

toc;