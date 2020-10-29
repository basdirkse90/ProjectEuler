function [ No ] = NumberOfDivisors( n )
p = factor(n);
a = hist(p,unique(p));

a = a + ones(size(a));

No = prod(a);

end