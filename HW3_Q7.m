% Part a
n = 40;
p = 1/365;
P_atleast1 = 1 - nchoosek(39, 0) * (1-p)^39;
disp("Part a answer: " + P_atleast1);

% Part b
P_no_sharing = 365/365;
for iter = 1 : 39
    P_no_sharing = P_no_sharing * ((365-iter)/365);
end
P_atleast2 = 1 - P_no_sharing;
disp("Part b answer: " + P_atleast2);

% Part c
num_bdays_same_atleast2 = 0;
for experiment = 1 : 10000
    bdays = ceil(365*rand(1, 40));
    for day = 1 : 365
        if (nnz(bdays == day) > 1)
            num_bdays_same_atleast2 = num_bdays_same_atleast2 + 1;
            break;
        end
    end
end
P_atleast2_repeated = num_bdays_same_atleast2 / 10000;
disp("Part c answer: " + P_atleast2_repeated);

% Part d
num_bdays_same_atleast3 = 0;
for experiment = 1 : 10000
    bdays = ceil(365*rand(1, 40));
    for day = 1 : 365
        if (nnz(bdays == day) > 2)
            num_bdays_same_atleast3 = num_bdays_same_atleast3 + 1;
            break;
        end
    end
end
P_atleast3_repeated = num_bdays_same_atleast3 / 10000;
disp("Part d answer: " + P_atleast3_repeated);

