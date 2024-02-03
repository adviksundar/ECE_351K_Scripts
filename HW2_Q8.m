% Question 8
packets = 10000;
length = 100;
discarded_packets = 0;
P_error_0_to_1 = 0.03;
P_error_1_to_0 = 0.01;
% For looping through 10000 packets
for number_packet = 1 : packets
    packet_transmitted = round(rand(1, length));
    packet_received = packet_transmitted;
    % Looping through each of the 100 bits in a packet
    for bit = 1 : length
        % Doing simulations for transmitting a bit 1
        if packet_transmitted(bit) == 1
            P_error = rand(1, 1);
            if P_error < P_error_1_to_0
                packet_received(bit) = 0;
            end
        % Doing simulations for transmitting a bit 0
        else
            P_error = rand(1, 1);
            if P_error < P_error_0_to_1
                packet_received(bit) = 1;
            end
        end
    end
    % Calculating the number of bits in the packet that have errors
    number_bit_errors = 0;
    for num_bit = 1 : length
        if packet_received(num_bit) ~= packet_transmitted(num_bit)
            number_bit_errors = number_bit_errors + 1;
        end
    end
    % If the number of bit errors in the packet exceeds 5, increment the
    % discarded_packets variable
    if number_bit_errors > 5
        discarded_packets = discarded_packets + 1;
    end
end

disp("Number of packets decoded incorrectly: " + discarded_packets)
PER_empirical = discarded_packets / packets;
disp("Empirical PER: " + PER_empirical)

% Probability of a bit having an error
P_b = 0.01 * 0.5 + 0.03 * 0.5;
% Probability of having less than 6 bit errors
P_lessthan6 = (1-P_b)^100 + (nchoosek(100, 1))*(P_b)*(1-P_b)^99 + ... 
    (nchoosek(100, 2))*(P_b^2)*(1-P_b)^98 + (nchoosek(100, 3))*(P_b^3)*(1-P_b)^97 + ... 
    (nchoosek(100, 4))*(P_b^4)*(1-P_b)^96 + (nchoosek(100, 5))*(P_b^5)*(1-P_b)^95;
% Probability of having 6 or more bit errors (PER_exact)
PER_exact = 1 - P_lessthan6;
disp("Exact PER: " + PER_exact);
