% Q2 Part a: s = 2
disp("Part a:")
s = 2;
constant = 0;
for i = 1 : 10
    constant = constant + (1/i^s);
end
entropy = 0;
for j = 1 : 10
    entropy = entropy + (1/(constant*j^s))*(log2(1/(constant*j^s)));
end
entropy = entropy * -1;
disp("Entropy s = 2: " + entropy);

disp("-------------------------")

% Q2 Part b: experimenting with s values
disp("Part b:")
% s = 1
s = 1;
constant = 0;
for i = 1 : 10
    constant = constant + (1/i^s);
end
entropy = 0;
for j = 1 : 10
    entropy = entropy + (1/(constant*j^s))*(log2(1/(constant*j^s)));
end
entropy = entropy * -1;
disp("Entropy s = 1: " + entropy);

% s = 2
s = 2;
constant = 0;
for i = 1 : 10
    constant = constant + (1/i^s);
end
entropy = 0;
for j = 1 : 10
    entropy = entropy + (1/(constant*j^s))*(log2(1/(constant*j^s)));
end
entropy = entropy * -1;
disp("Entropy s = 2: " + entropy);

% s = 3
s = 3;
constant = 0;
for i = 1 : 10
    constant = constant + (1/i^s);
end
entropy = 0;
for j = 1 : 10
    entropy = entropy + (1/(constant*j^s))*(log2(1/(constant*j^s)));
end
entropy = entropy * -1;
disp("Entropy s = 3: " + entropy);

% s = 4
s = 4;
constant = 0;
for i = 1 : 10
    constant = constant + (1/i^s);
end
entropy = 0;
for j = 1 : 10
    entropy = entropy + (1/(constant*j^s))*(log2(1/(constant*j^s)));
end
entropy = entropy * -1;
disp("Entropy s = 4: " + entropy);

% s = 5
s = 5;
constant = 0;
for i = 1 : 10
    constant = constant + (1/i^s);
end
entropy = 0;
for j = 1 : 10
    entropy = entropy + (1/(constant*j^s))*(log2(1/(constant*j^s)));
end
entropy = entropy * -1;
disp("Entropy s = 5: " + entropy);