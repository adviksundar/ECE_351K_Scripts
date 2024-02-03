% Inspired from the example MATLAB code given in Lecture 21, but reworked
% for the HW problem

% Question 6e
SNR = 10.824100;
N = 100000;
A = 1;
std_dev_0 = sqrt(A^2/SNR);

input_bits = sign(randn(2, N));
X = input_bits * A;
Z = std_dev_0 * randn(2, N);
Y = X + Z;
output_bits = sign(Y);

errors = abs(input_bits-output_bits)./2;
num_errors = sum(errors);

Pe_empirical = num_errors/N;
disp("Experimental Probability: " + sum(Pe_empirical));

Pe_theory = 2*(1-normcdf(sqrt(SNR))) - (1-normcdf(sqrt(SNR)))^2;
disp("Theoretical Probability From Part C: " + P_theory);

disp("These above probabilities are very, very close to each other, so the experimental probability agrees with the probability from part c.")

% Question 6f
figure(1);
scatter(Y(1,:), Y(2,:));
