% Question 7 Part a in HW1:
N = 100000; % number of random bits
x = round(rand(1, N)) * 2 - 1;  % generating random bits
disp(x);

% Question 7 Part b in HW1:
h = 2.3e-5;
SNR = 5;

z = randn(1, N); % the additive Gaussian noise
variance = h^2 * 1 / SNR;
z = z * sqrt(variance);
y = h .* x + z; % the signal being outputted
disp("Correct noise variance to use: " + variance);
disp(y);

% Question 7 Part c in HW1:
x_hat = sign(y ./ h); % decoding the received bits that were inside y
errors = sum(abs(x - x_hat)) / 2; % finding out how many errors occurred
P_b = errors / N; % finding P_b
disp("SNR of 5:")
disp("Number of errors: " + errors);
disp("P_b is: " + P_b);

% Question 7 Part d in HW1: 
SNR_new = 8;

z_new = randn(1, N); % the additive Gaussian noise
variance_new = h^2 * 1 / SNR_new;
z_new = z_new * sqrt(variance_new);
y_new = h .* x + z_new; % the signal being outputted

x_hat_new = sign(y_new ./ h); % decoding the received bits that were inside y
errors_new = sum(abs(x - x_hat_new)) / 2; % finding out how many errors occurred
P_b_new = errors_new / N; % finding P_b
disp("SNR of 8:")
disp("P_b is: " + P_b_new);
disp("P_b improved by: " + round(P_b/P_b_new) + " times");

% Question 7 part e in HW1:
analytical_P_b = 1 - normcdf(sqrt(SNR));
disp("Analytical Probability: " + analytical_P_b);
disp("Comparing experimental P_b when SNR = 5 with the " + ... 
    "analytical probability recently calculated:");
disp("Experimental probability: " + P_b);
disp("Analytical probability: " + analytical_P_b);
disp("Based on these printed probabilities above, it seems they " + ... 
    "are very close and almost exactly the same as each other.");

disp("Comparing experimental P_b when SNR = 8 with the " + ... 
    "analytical probability recently calculated:");
disp("Experimental probability: " + P_b_new);
disp("Analytical probability: " + analytical_P_b);
disp("Based on these printed probabilities above, it seems they " + ... 
    "are significantly farther from each other.");
