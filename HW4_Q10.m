% Question 10 Part a

disp("Part a:")
disp(" ")

N = 50;
X = round(10*rand(1, N));
mean_50 = mean(X);
var_50 = var(X);
disp("Sample average for N=50: " + mean_50);
disp("Sample variance for N=50: " + var_50);
N = 1000;
X = round(10*rand(1, N));
mean_1000 = mean(X);
var_1000 = var(X);
disp("Sample average for N=1000: " + mean_1000);
disp("Sample variance for N=1000: " + var_1000);
true_mean = (0 + 10)/2;
true_var = (10 - 0)*(10 - 0 + 2)/12;
disp("True expected value of X: " + true_mean);
disp("True variance of X: " + true_var);
%{
Comparison:
It looks like as N gets larger, the sample mean and variance tends to 
further approach the true mean and variance.
If N is low, then the sample mean and variance will generally be more off 
from the true mean and variance (see results for N=50 for example). 
However, for a bigger value of N like 1000, the sample mean and variance 
is generally more closer to the true mean and variance. 
%}

% Question 10 Part b

disp(" ")
disp("Part b:")
disp(" ")

% Sequence 1
result = BernoulliBits(1000, 0.05);
count = 0;
for i = 1 : length(result)
    if result(i) == 1
        count = count + 1;
    end
end
x_equals_1 = count / length(result);
E_X_sample = mean(result);
var_x_sample = var(result);
disp("P(X=1) for Sequence 1 = " + x_equals_1);
disp("E[X] for Sequence 1 = " + E_X_sample);
disp("Var[X] for Sequence 1 = " + var_x_sample);

% Sequence 2
result2 = BernoulliBits(1000, 0.05);
count = 0;
for i = 1 : length(result2)
    if result2(i) == 1
        count = count + 1;
    end
end
x_equals_1 = count / length(result2);
E_X_sample = mean(result2);
var_x_sample = var(result2);
disp("P(X=1) for Sequence 2 = " + x_equals_1);
disp("E[X] for Sequence 2 = " + E_X_sample);
disp("Var[X] for Sequence 2 = " + var_x_sample);

% Sequence 3
result3 = BernoulliBits(1000, 0.05);
count = 0;
for i = 1 : length(result3)
    if result3(i) == 1
        count = count + 1;
    end
end
x_equals_1 = count / length(result3);
E_X_sample = mean(result3);
var_x_sample = var(result3);
disp("P(X=1) for Sequence 3 = " + x_equals_1);
disp("E[X] for Sequence 3 = " + E_X_sample);
disp("Var[X] for Sequence 3 = " + var_x_sample);

% Sequence 4
result4 = BernoulliBits(1000, 0.05);
count = 0;
for i = 1 : length(result4)
    if result4(i) == 1
        count = count + 1;
    end
end
x_equals_1 = count / length(result4);
E_X_sample = mean(result4);
var_x_sample = var(result4);
disp("P(X=1) for Sequence 4 = " + x_equals_1);
disp("E[X] for Sequence 4 = " + E_X_sample);
disp("Var[X] for Sequence 4 = " + var_x_sample);

% Sequence 5
result5 = BernoulliBits(1000, 0.05);
count = 0;
for i = 1 : length(result5)
    if result5(i) == 1
        count = count + 1;
    end
end
x_equals_1 = count / length(result5);
E_X_sample = mean(result5);
var_x_sample = var(result5);
disp("P(X=1) for Sequence 5 = " + x_equals_1);
disp("E[X] for Sequence 5 = " + E_X_sample);
disp("Var[X] for Sequence 5 = " + var_x_sample);

true_E_X = (1-0.05);
true_var_X = 0.05*(1-0.05);
disp("True E[X]: " + true_E_X);
disp("True Var[X]: " + true_var_X);

%{
It seems that the estimates for the 5 cases match closely with
the real E[X] and Var[x]. The estimates were not significatly off 
(the mean for the samples looked generally off by 0.011 max while the 
variances for the samples looked generally off by about 0.010 max) 
and they seem really close to the true values. 
%}

% Bernoulli bit generator function
function b_bits = BernoulliBits(N, p_0)
    bits = zeros(1, N);
    for i = 1: N
        if rand(1, 1) < p_0
            bits(i) = 0;
        else
            bits(i) = 1;
        end
    end
    b_bits = bits;
end
