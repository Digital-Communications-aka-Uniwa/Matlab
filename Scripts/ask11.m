A = 4;                      % Amplitude
f = 10;                     % Frequency (Hz)
bits = 4;                   % Number of bits for quantization
fs = 1e3;                   % Sampling frequency (Hz)
Ts = 1/fs;                  % Sampling period
t = 0:Ts:1;                 % Time vector from 0 to 1 second
pcm = A*cos(2*pi*f*t);       % Original PCM signal

% Compute quantization step size D as (max - min)/2^bits
D = (max(pcm) - min(pcm)) / (2^bits);

% Define partition and codebook for quantization
partition = [-min(pcm)+D : D : max(pcm)+D];
codebook = [min(pcm)+(D/2) : D : max(pcm)+(D/2)];

% Quantize the PCM signal
[index, quantz, distor] = quantiz(pcm, partition, codebook);

% Calculate quantization error
qerr = pcm - quantz;

% Plot the original and quantized PCM signals
subplot(2, 1, 1);
stem(t, pcm);
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Original PCM Signal');
hold on;
stem(t, quantz, 'r');
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Quantized PCM Signal');
legend('Original Signal', 'Quantized Signal');
hold off;

% Plot the quantization error
subplot(2, 1, 2);
plot(t, qerr);
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Quantization Error');
