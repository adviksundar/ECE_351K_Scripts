% Question 9 Part a
sum = 0;
for i = 1 : 1000
    sum = sum + (1/i^2);
end
c_0 = 1/sum;
disp("c_0 is: " + c_0);

% Question 9 Part c
cum_prob = 0;
x = 1000;
count = 0;
while (cum_prob < 0.1)
    cum_prob = cum_prob + (c_0/(x^2));
    count = count + 1;
    x = x - 1;
end
disp("Count: " + count);
disp("Cum prob: " + cum_prob);