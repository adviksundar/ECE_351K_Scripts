X = 2 * rand(1, 10000);
Y = exprnd(5, 10000);
Z = X + Y;

figure;
hist(Z, 100);
title('Distribution of Z');