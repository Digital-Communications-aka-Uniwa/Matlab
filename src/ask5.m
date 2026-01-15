Start = 500;               % Starting frequency (Hz)
Step = 100;                % Frequency step (Hz)
End = 3000;                % Ending frequency (Hz)
f = Start:Step:End;        % Frequency vector

ts = 1/End;                % Sampling time based on the highest frequency
tf = 1/Start;              % Sampling time based on the lowest frequency
dt = tf/100;               % Fine time resolution
tw = 5*ts;                 % Total time window (5 times the smallest sampling period)
t = dt:dt:tw;              % Time vector

x = zeros(length(f), length(t));  % Preallocate matrix for cosine waves

for i = 1:length(f)
    x(i,:) = cos(2*pi*f(i)*t);      % Generate cosine wave for each frequency
end
signal_x = sum(x);          % Sum all cosine waves to create the noise-free signal

noise1 = 10;
y = awgn(x, noise1);        % Add white Gaussian noise at 10 dB SNR
signal_y = sum(y);          % Sum to get the noisy signal (10 dB)

noise2 = 5;
z = awgn(x, noise2);        % Add white Gaussian noise at 5 dB SNR
signal_z = sum(z);          % Sum to get the noisy signal (5 dB)

% Play the signals sequentially
sound(signal_x);
pause(1);
sound(signal_y);
pause(1);
sound(signal_z);

% Plot the time-domain signals
figure
subplot(3, 1, 1)
plot(t, signal_x)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Noise-free Signal');

subplot(3, 1, 2)
plot(t, signal_y)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Noisy Signal with 10 dB Noise');

subplot(3, 1, 3)
plot(t, signal_z)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Noisy Signal with 5 dB Noise');

BW = 1/dt;    % Bandwidth based on time resolution

% Compute FFT for the noise-free signal
N_x = length(signal_x);
df_x = BW/N_x;
f_x = -BW/2:df_x:BW/2-df_x;
ph_x = fft(signal_x);
ph_x = fftshift(ph_x)/N_x;

% Compute FFT for the 10 dB noisy signal
N_y = length(signal_y);
df_y = BW/N_y;
f_y = -BW/2:df_y:BW/2-df_y;
ph_y = fft(signal_y);
ph_y = fftshift(ph_y)/N_y;

% Compute FFT for the 5 dB noisy signal
N_z = length(signal_z);
df_z = BW/N_z;
f_z = -BW/2:df_z:BW/2-df_z;
ph_z = fft(signal_z);
ph_z = fftshift(ph_z)/N_z;

% Plot the amplitude spectra of the signals
figure
subplot(3, 1, 1)
plot(f_x, abs(ph_x))
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Amplitude Spectrum of Noise-free Signal');

subplot(3, 1, 2)
plot(f_y, abs(ph_y))
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Amplitude Spectrum of Noisy Signal (10 dB)');

subplot(3, 1, 3)
plot(f_z, abs(ph_z))
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Amplitude Spectrum of Noisy Signal (5 dB)');
