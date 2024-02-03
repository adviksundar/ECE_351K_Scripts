M = 10; % Number of white marbles
N = 30; % Total number of marbles
n = 10; % Number of marbles drawn in one trial

E_X = 0;
E_Y = 0;
for k = 0:10
    P_X = nchoosek(M, k) * nchoosek(N - M, n - k) / nchoosek(N, n);
    E_X = E_X + k * P_X;
end
for k = 0:10
    P_Y = nchoosek(M, n - k) * nchoosek(N - M, k) / nchoosek(N, n);
    E_Y = E_Y + k * P_Y;
end
%E_Y = 10 - E_X;
disp(E_X);
disp(E_Y);

variance_X = 0;
for k = 0:10
    P_X = nchoosek(M, k) * nchoosek(N - M, n - k) / nchoosek(N, n);
    variance_X = variance_X + ((k - E_X)^2) * P_X;
end
stddev_X = sqrt(variance_X);
disp("X: " + variance_X);
disp("X: " + stddev_X);

variance_Y = 0;
for k = 0:10
    P_Y = nchoosek(M, n - k) * nchoosek(N - M, k) / nchoosek(N, n);
    variance_Y = variance_Y + ((k - E_Y)^2) * P_Y;
end
stddev_Y = sqrt(variance_Y);
disp("Y: " + variance_Y);
disp("Y: " + stddev_Y);

covariance = 0;
for k = 0:10
    P_XY = nchoosek(M, k) * nchoosek(N - M, n - k) / nchoosek(N, n);
    covariance = covariance + ((k - E_X) * (10 - k - E_Y)) * P_XY;
end
correlation = covariance / (stddev_X * stddev_Y);
disp("Covariance:" + covariance);
disp("Correlation: " + correlation);


%E_x = 0;
%E_y = 0;
%for n = 0 : 10
%    E_x = E_x + n*((factorial(10))/(factorial(n)*factorial(10-n)*nchoosek(30, 10)));
%end
%for n = 0 : 10
%    E_y = E_y + n*((factorial(20))/(factorial(n)*factorial(20-n)*nchoosek(30, 10)));
%end
%disp("E_x:" + E_x);
%disp("E_y:" + E_y);

% syms x
% func = (factorial(10)*nchoosek(30, 10))/(factorial(x)*factorial(10-x));
%F = int(func,[0 10])

%syms x;
%expr = -2*x/(1+x^2)^2;
%Find the indefinite integral of the univariate expression.
%c = x^2 + 2*x + 1;
%int(c)
%result = integral(c, 0, 5); % Compute the definite integral of f from a to b
%disp(result);

% f = @(x) (factorial(10)*nchoosek(30, 10))/(factorial(x)*factorial(10-x));
% integ = int(f, 0, 10);
% disp(integ);