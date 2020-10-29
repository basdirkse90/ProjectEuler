% Project Euler Problem 31. runtime: 8.6 (s)

clc;
clear;
warning off;
close all;
tic;

% 1 and 2 cents
A(1,:) = [200 0 0 0 0 0 0 0];
B = zeros(1,8);
i=2;
while A(i-1,1) >= 2
    A(i,1) = A(i-1,1) - 2;
    A(i,2) = A(i-1,2) + 1;
    i = i+1;
  
end


%5 cents
T = A;
i=1;
for k = 1:length(T)
    while T(k,2) >= 2 & T(k,1) >= 1
        B(i,2) = T(k,2) - 2;
        B(i,1) = T(k,1) - 1;
        B(i,3) = T(k,3) + 1;
        
        T(k,2) = T(k,2) - 2;
        T(k,1) = T(k,1) - 1;
        T(k,3) = T(k,3) + 1;
        i = i+1;
    end
end
A = [A; B];


%10 cents
clear T B i k;
B = zeros(1,8);
T = A;
i=1;

for k = 1:length(T)
    while T(k,3) >= 2
        B(i,1) = T(k,1);
        B(i,2) = T(k,2);
        B(i,3) = T(k,3) - 2;
        B(i,4) = T(k,4) + 1;
        
        T(k,3) = T(k,3) - 2;
        T(k,4) = T(k,4) + 1;
        i = i+1;
    end
end
A = [A; B];

% 20 cents
clear T B i k;
B = zeros(1,8);
T = A;
i=1;

for k = 1:length(T)
    while T(k,4) >= 2
        B(i,1) = T(k,1);
        B(i,2) = T(k,2);
        B(i,3) = T(k,3);
        B(i,4) = T(k,4) - 2;
        B(i,5) = T(k,5) + 1;
        
        T(k,4) = T(k,4) - 2;
        T(k,5) = T(k,5) + 1;
        i = i+1;
    end
end
A = [A; B];

%50 cents
clear T B i k;
B = zeros(1,8);
T = A;
i=1;
for k = 1:length(T)
    while T(k,5) >= 2 & T(k,4) >= 1
        B(i,1) = T(k,1);
        B(i,2) = T(k,2);
        B(i,3) = T(k,3);
        B(i,4) = T(k,4) - 1;
        B(i,5) = T(k,5) - 2;
        B(i,6) = T(k,6) + 1;
        
        T(k,4) = T(k,4) - 1;
        T(k,5) = T(k,5) - 2;
        T(k,6) = T(k,6) + 1;
        i = i+1;
    end
end
A = [A; B];

% 100 cents
clear T B i k;
B = zeros(1,8);
T = A;
i=1;

for k = 1:length(T)
    while T(k,6) >= 2
        B(i,1) = T(k,1);
        B(i,2) = T(k,2);
        B(i,3) = T(k,3);
        B(i,4) = T(k,4);
        B(i,5) = T(k,5);
        B(i,6) = T(k,6) - 2;
        B(i,7) = T(k,7) + 1;
        
        T(k,6) = T(k,6) - 2;
        T(k,7) = T(k,7) + 1;
        i = i+1;
    end
end
A = [A; B];

% 200 cents
A = [A; 0 0 0 0 0 0 0 1];

ANTWOORD = length(A)

toc;