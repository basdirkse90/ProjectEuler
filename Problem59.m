% Project Euler Problem 59. runtime: 3 (s)
clc; clear;
warning off; close all;
tic;

A = csvread('cipher1.txt');
x = combn(97:122,3);

for i = 1:26^3
	k = padarray(x(i,:),[0 1198],'circular','post');
	s = char(bitxor(A,k));
	if(size(strfind(s,' the ')))
		tekst = s
		ANTWOORD = sum(bitxor(A,k))
		break;
	end
end

toc;