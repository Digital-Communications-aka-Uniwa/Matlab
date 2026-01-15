f0 = 10;             % Frequency (Hz)
fs = 1000;           % Sampling frequency
A = 5;               % Amplitude
ph = 0^0;            % Phase (0°)
T1 = 0.5;            % Duration (sec)
[x, t] = mine_sin(f0, fs, A, ph, T1);    % Generate sine wave x(t)
[y, t] = mine_sin(f0, fs, A/2, ph, T1);    % Generate sine wave with half amplitude

T = 1/f0;            % Period of the sine wave
[ph1, f] = phase_sin(x, T);   % Compute phase spectrum of x(t)
[ph2, f] = phase_sin(y, T);   % Compute phase spectrum of y(t)

subplot(2, 1, 1);
plot(t, x, 'b')
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('x(t) = 5*sin(2*pi*10*t+0°)');
hold on;
plot(t, y, 'r')
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('x(t) = 2.5*sin(2*pi*10*t+0°)');
legend('Sine Wave Signal', 'Sine Wave Signal with Half Amplitude');
hold off;

subplot(2, 1, 2);
plot(f, abs(ph1), 'b')
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Amplitude Spectrum of x(t) = 5*sin(2*pi*10*t+0°)');
hold on;
plot(f, abs(ph2), 'r')
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Amplitude Spectrum of x(t) = 2.5*sin(2*pi*10*t+0°)');
legend('Amplitude Spectrum of x(t) = 5*sin(2*pi*10*t+0°)', 'Theoretical Spectrum Expression');
hold off;
