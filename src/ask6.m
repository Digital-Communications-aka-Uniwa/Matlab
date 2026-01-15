fs = 6000;          % Sampling frequency
ts = 1/fs;          % Sampling period
t = 0:ts:1;         % Time vector from 0 to 1 second
fr = [1567 1760 1975 1046];  % Frequency components
x = zeros(length(fr), length(t));  % Preallocate a matrix for the cosine waves

for i = 1:length(fr)
    x(i,:) = cos(2*pi*fr(i)*t);  % Generate each cosine wave
end

xx = [x(1,:) x(2,:) x(3,:) x(4,:)];  % Concatenate the waves

subplot(2, 1, 1);
plot([0:ts:4+3*ts], xx)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Melody signal');

sound(xx, fs)  % Play the sound

N = length(xx);
dt = ts/100;
BW = 1/dt;
df = BW/N;
Start = -BW/2;
Step = df;
End = BW/2-df;
f = Start:Step:End;
ph = fft(xx);
ph = fftshift(ph)/N;

subplot(2, 1, 2);
plot(f, abs(ph))
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Melody spectrum');
