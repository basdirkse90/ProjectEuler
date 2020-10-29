function [ bool ] = isAbundant( N )
f = factor(N);
p = unique(f);
a = hist(f,p);

for i = 1:length(p)
    z(i) = sum(p(i).^[0:a(i)]);
end

if(prod(z) > 2*N)
    bool = 1;
else
    bool = 0;
end

end

