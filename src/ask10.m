t = 0:0.001:0.5;
A = 1;
signal = A * randn(size(t));

% Quantization to 8 levels
Nq = 8;
step = A / (Nq/2);
partition = [-A + step : step : A - step];
codebook = [-A + (step/2) : step : A - (step/2)];
[index, quants8, distor] = quantiz(signal, partition, codebook);

% Quantization to 16 levels
Nq = 16;
step = A / (Nq/2);
partition = [-A + step : step : A - step];
codebook = [-A + (step/2) : step : A - (step/2)];
[index, quants16, distor] = quantiz(signal, partition, codebook);

qerr8 = signal - quants8;
qerr16 = signal - quants16;

figure
subplot(2, 1, 1)
stem(t, signal)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Original Signal');
hold on;
stem(t, quants8, 'r')
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Signal Quantized to 8 Levels');
legend('Original Signal', 'Quantized to 8 Levels')
hold off;

subplot(2, 1, 2)
stem(t, signal)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Original Signal');
hold on;
stem(t, quants16, 'r')
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Signal Quantized to 16 Levels');
legend('Original Signal', 'Quantized to 16 Levels')

figure
subplot(2, 1, 1)
plot(t, qerr8)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Quantization Error at 8 Levels');

subplot(2, 1, 2)
plot(t, qerr16)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Quantization Error at 16 Levels');
