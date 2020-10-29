function ANTWOORD = Problem52a()
dg = 6
t = unique(sort(combn(0:9,dg),2),'rows');
ANTWOORD = 0;

while(ANTWOORD == 0)
    
    for i = 2:size(t,1)
        A = dig2num(unique(perms(t(i,:)),'rows'));
        j = 1;
        while(j<=length(A) & A(j)*6 < 10^dg)
            m = 2;
            while(ismember(A(j)*m,A))
                m = m+1;
            end
            if (m>6)
                ANTWOORD = A(j);
                return
            end
        j = j+1;    
        end
    end
    Z = [t 0*ones(size(t,1),1)];
    for k = 1:9
        Z = [Z; t k*ones(size(t,1),1)];
    end
    t = unique(sort(Z,2),'rows');
    dg = dg + 1
    
    
end