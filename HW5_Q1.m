% Q1 Part b:
i=1;
for p=0:0.01:1
    f(i) = -log2(p)-((1-p).*(log2(1-p)))/p;
    i = i+1;
end
p=0:0.01:1;
plot(p,f);
xlabel('p'); 
ylabel('H(x)'); 
title('Plotting Entropy in Terms of p'); 

entropy_partb = -log2(0.5)-((1-0.5).*(log2(1-0.5)))/0.5;
disp("Part b entropy for the fair coin when p = 0.5: " + entropy_partb);