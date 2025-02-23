m = [1 1 0 0 0 1 1 0 1];   % Binary message vector
T = 1e-3;                  % Symbol period
dt = 1e-7;                 % Time resolution
fc = 5e3;                  % Carrier frequency
Nm = length(m);            % Number of message bits
Tw = Nm * T;               % Total time window
t = 0:dt:Tw-dt;            % Time vector
Np = round(T/dt);          % Number of points per symbol
pm = [];
for i = 1:Nm
    pm = [pm m(i)*ones(1, Np)];
end

carrier = cos(2*pi*fc*t);  % Carrier signal
psk = pm .* carrier;       % PSK modulated signal

BW = 1/dt;
Nt = length(t);
df = BW/Nt;
f = -BW/2:df:BW/2-df;
ph_pm = fft(pm);
ph_pm = fftshift(ph_pm)/Nt;
ph_psk = fft(psk);
ph_psk = fftshift(ph_psk)/Nt;

figure
subplot(2, 1, 1)
plot(t, pm)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Message Signal');
subplot(2, 1, 2)
plot(f, abs(ph_pm))
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Amplitude Spectrum of Message Signal');

figure
subplot(2, 1, 1)
plot(t, psk)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('PSK Modulated Signal');
subplot(2, 1, 2)
plot(f, abs(ph_psk))
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Amplitude Spectrum of PSK Modulated Signal');
