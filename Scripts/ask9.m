Ac = 1;
Am = 0.5;
fm = 2;
fc = 100;
fs = 400;
t = 0:0.001:1;
s = Am*sin(2*pi*fm*t);
carrier = Ac*cos(2*pi*fc*t);
x1 = carrier .* s;
x2 = ammod(s, fc, 400);

subplot(3, 1, 1)
plot(t, s)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('s(t) = 0.5*sin(2*pi*2*t)');

subplot(3, 1, 2)
plot(t, x1)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('DSB signal carrier.*s(t) = [1*cos(2*pi*100*t)].*[0.5*sin(2*pi*2*t)]');

subplot(3, 1, 3)
plot(t, x2)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('DSB Signal using ammod()');
