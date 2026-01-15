[x, Fs] = audioread('3WORDS.wav');
sound(x, Fs);

N = length(x);
Start = 0;
Step = 1;
End = N-1;
t = (Start:Step:End) / Fs;
subplot(2, 1, 1);
plot(t, x)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Waveform of 3WORDS.wav');

dt = 1 / (Fs*100);
BW = 1 / dt;
df = BW / N;
Start = -BW/2;
Step = df;
End = BW/2 - df;
f = Start:Step:End;
ph = fft(x);
ph = fftshift(ph) / N;
subplot(2, 1, 2);
plot(f, abs(ph))
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Amplitude Spectrum of the signal 3WORDS.wav');
