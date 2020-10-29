function [ fac ] = factor_unique( n )
    x = factor(n);
    
    if(length(x) == length(unique(x)))
        fac = x;
    else
        [C, ia, ic] = unique(x);
        for j = 1:length(C)
            C(j) = C(j)^sum(ic == j);
        end
        fac = C;
    end
        
    fac;

end

