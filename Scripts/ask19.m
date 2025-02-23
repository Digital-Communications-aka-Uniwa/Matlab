B = 1:1:1e5;
S_N0 = 25;
C = B .* log2(1 + S_N0 ./ B);

semilogx(B, C)
xlabel('Frequency Bandwidth (Hz)');
ylabel('Channel Capacity C (bits/sec)');
title('Shannon-Hartley Theorem');
