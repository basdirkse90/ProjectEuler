function [n] = dig2num( V )
n = 0;
t = size(V);
z = logspace(t(2)-1,0,t(2));
pow = meshgrid(z,1:t(1));

n = sum(V.*pow,2);
end

