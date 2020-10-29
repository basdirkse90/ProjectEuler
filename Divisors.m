function [ div ] = Divisors( n )

p = factor(n);
a = hist(p,unique(p));

z = 1;
 
b = [];

for j = 1:length(p)
    c = combntns(p,j);
    b = [b prod(c,2)'];
end


z = [z b];



div = unique(z);

end

