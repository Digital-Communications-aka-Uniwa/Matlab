f = 100;
duration = 4;
A = sqrt(2);
fs = 8e3;
Ts = 1/fs;
t = 0:Ts:duration;
x = A*sin(2*pi*f*t);
N = length(x);
P = 1/N * sum(abs(x.^2));
snr = 15;
Pg = P/10^(snr/10);
gaussian = wgn(1, N, Pg, 'linear');
addNoise = x + gaussian;

plot(t, addNoise)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Noisy Signal SNR');
