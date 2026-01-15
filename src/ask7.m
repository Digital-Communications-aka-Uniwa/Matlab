Start = 500;
Step = 100;
End = 3000;
f = Start:Step:End;
fc = 1e5;
Tc = 1/fc;
dt = Tc/100;
Ts = 1/3e3;
tw = 5*Ts;
t = dt:dt:tw;

x = zeros(length(f), length(t));

for i = 1:length(f)
    x(i,:) = cos(2*pi*f(i)*t);
end
signal = sum(x);
carrier = cos(2*pi*fc*t);
DSB = carrier .* signal;
filtered_signal = bpfilt(DSB, 500, 3000, 1/dt);

figure
subplot(3, 1, 1)
plot(t, signal)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Information Signal');

subplot(3, 1, 2)
plot(t, DSB)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('DSB Information Signal');

subplot(3, 1, 3)
plot(t, filtered_signal)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Filtered Information Signal');

BW = 1/dt;
N = length(t);
df = BW/N;
f_axis = -BW/2:df:BW/2-df;

ph_x = fft(signal);
ph_x = fftshift(ph_x)/N;

ph_dsb = fft(DSB);
ph_dsb = fftshift(ph_dsb)/N;

ph_filt = fft(filtered_signal);
ph_filt = fftshift(ph_filt)/N;

figure
subplot(3, 1, 1)
plot(f_axis, abs(ph_x))
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Amplitude Spectrum of Information Signal');

subplot(3, 1, 2)
plot(f_axis, abs(ph_dsb))
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Amplitude Spectrum of Modulated Information Signal');

subplot(3, 1, 3)
plot(f_axis, abs(ph_filt))
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Amplitude Spectrum of Filtered Signal');
