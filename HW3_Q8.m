% Part a
less_than_2_bit_errors_bin = 0; 
for i = 0 : 2
    less_than_2_bit_errors_bin = less_than_2_bit_errors_bin + binopdf(i, 1000, 0.001);
end
disp("Part a answer: " + less_than_2_bit_errors_bin);

% Part b
less_than_2_bit_errors_poiss = 0;
alpha = 1000 * 0.001;
for j = 0 : 2
    less_than_2_bit_errors_poiss = less_than_2_bit_errors_poiss + poisspdf(j, alpha);
end
disp("For part b, alpha is: " + alpha);
disp("Part b probability: " + less_than_2_bit_errors_poiss);

% Part c
packets = 10000;
bits = 1000;
binomial_errors = zeros(1, packets);
poisson_errors = zeros(1, packets);
alpha_2 = bits * 0.001;
for i = 1 : packets
    binomial_errors(i) = binornd(bits, 0.001, 1, 1);
    poisson_errors(i) = poissrnd(alpha_2, 1, 1);
end
subplot(1, 2, 1);
hist(binomial_errors, 100);
xlabel('Amount of Errors Made Per Packet');
ylabel('Number of Packets');
title("Binomial PMF");
subplot(1, 2, 2);
hist(poisson_errors, 100);
xlabel('Amount of Errors Made Per Packet');
ylabel('Number of Packets');
title("Poisson PMF");
disp("Part c statement: The graphs of the Binomial PMF and Poisson PMF seem very close.");