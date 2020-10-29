% Project Euler Problem 62. runtime: 0.26 (s)
clc; clear;
warning off; close all;
tic;
format long
per = 5;
n = 1;
succes = false;
while(~succes)
	x = [ ceil(10^((n-1)/3)):ceil(10^(n/3)-1) ]';
	y = x.^3;
	A = num2dig(y);
	
	h = histc(A,0:9,2);
	
	[C, ia, ic] = unique(h,'rows','stable');
	dupl = histc(ic,1:max(ic));
	a = find(dupl == per,1);
	if(length(a) > 0)
		b = find(ic==a,1);
		ANTWOORD = dig2num(A(b,:))
		succes = true;
	end
	n = n+1;
end


toc;
