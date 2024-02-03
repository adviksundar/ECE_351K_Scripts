X = 2 + 0.5 * randn(10000, 1);
Y = 2 + 2.0 * randn(10000, 1);

figure;
subplot(1, 2, 1);
hist(X, 100);
title('Gaussian(2, 0.5) RV');
subplot(1, 2, 2);
hist(Y, 100);
title('Gaussian(2, 2) RV');