B = 3e3;
S_N0 = -20:1:30;
C = B * log2(1 + S_N0/B);

semilogx(S_N0, C)
xlabel('S/N0 (dB)');
ylabel('Channel Capacity C (bits/sec)');
title('Shannon-Hartley Theorem');
