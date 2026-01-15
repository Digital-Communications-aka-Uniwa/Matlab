f1 = 100;
dt = 0.0001;
t1 = -0.05:dt:0.005;
m1 = sinc(2*t1*f1);
m2 = sinc(4*t1*f1);
N = length(t1);
Nf = 2^ceil(log2(N));
f = linspace(-f1, f1, Nf);
ph_m1 = fft(m1, Nf);
ph_m1 = fftshift(ph_m1)/N;
ph_m2 = fft(m2, Nf);
ph_m2 = fftshift(ph_m2)/N;

figure
subplot(2, 1, 1)
plot(t1, m1)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('m1(t) = sinc(2*t*100)');

subplot(2, 1, 2)
plot(t1, m2)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('m2(t) = sinc(4*t*100)');

figure
subplot(2, 1, 1);
plot(f, abs(ph_m1))
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Amplitude Spectrum of m1(t) = sinc(2*t*100)');

subplot(2, 1, 2);
plot(f, abs(ph_m2))
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Amplitude Spectrum of m2(t) = sinc(4*t*100)');
