Am = 0.5;
fa = 1e3;
Ta = 1/fa;
dt = Ta/100;
Tw = 5*Ta;
t = dt:dt:Tw;
x = Am*cos(2*pi*fa*t);

Ac = 2.5;
fc = 10 * fa;
y = Ac*cos(2*pi*fc*t);

z = x .* y;

demod = butterworth_filter(z, dt, 10, fc, fa);

figure
subplot(3, 1, 1)
plot(t, x)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('x(t) = 0.5*cos(2*pi*1000*t)');

subplot(3, 1, 2)
plot(t, y)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('y(t) = 2.5*cos(2*pi*10000*t)');

subplot(3, 1, 3)
plot(t, z)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('DSB Signal x(t).*y(t) = 0.5*cos(2*pi*1000*t) .* 2.5*cos(2*pi*10000*t)');

figure
plot(t, x)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
hold on;
plot(t, demod, 'r')
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('DSB Signal Demodulation');
legend('x(t) = 0.5*cos(2*pi*1000*t)', 'Dem
