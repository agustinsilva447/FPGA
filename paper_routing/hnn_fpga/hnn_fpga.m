function [V] = hnn_fpga(U, l)
N1 = 8;
V = zeros(N1 * N1, 1);
for x = 1:N1
    for i = 1:N1
        if x == i
            V((x-1) * N1 + i) = 0;
        else
            V((x-1) * N1 + i) = 1 / (1 + exp(-1 * U((x-1) * N1 + i) * l));
        end
    end
end