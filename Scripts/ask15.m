f1 = 100;
dt = 0.0001;
t = -0.05:dt:0.005;
m = sinc(2*t*f1);
N = length(t);
Nf = 2^ceil(log2(N));
f = linspace(-f1, f1, Nf);
ph_m = fft(m, Nf);
ph_m = fftshift(ph_m) / N;

fc = 600;
DSB = m .* cos(2*pi*fc*t);
ph_dsb = fft(DSB, Nf);
ph_dsb = fftshift(ph_dsb) / N;

figure
subplot(2, 1, 1)
plot(t, m)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('m(t) = sinc(2*t*100)');

subplot(2, 1, 2)
plot(f, abs(ph_m))
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Amplitude Spectrum of m(t) = sinc(2*t*100)');

figure
subplot(2, 1, 1);
plot(t, DSB)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('DSB Signal m(t).*cos(2*pi*600*t) = sinc(2*t*100).*cos(2*pi*600*t)');

subplot(2, 1, 2);
plot(f, abs(ph_dsb))
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Amplitude Spectrum of m(t).*cos(2*pi*600*t) = sinc(2*t*100).*cos(2*pi*600*t)');
