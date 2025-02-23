Am = 0.5;
fa = 1e3;
Ta = 1/fa;
dt = Ta/100;
Tw = 5*Ta;
ph = 0.1*pi;
t = dt:dt:Tw;
x = Am*cos(2*pi*fa*t);

Ac = 2.5;
fc = 10 * fa;

y = Ac*cos(2*pi*fc*t);
z = x .* y;
demod = butterworth_filter(z, dt, 10, fc, fa);

y_non = Ac*cos(2*pi*fc*t + ph);
z_non = x .* y_non;
demod_non = butterworth_filter(z_non, dt, 10, fc, fa);

ph_loss = pi;
y_loss = Ac*cos(2*pi*fc*t + ph_loss);
z_loss = x .* y_loss;
demod_loss = butterworth_filter(z_loss, dt, 10, fc, fa);

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
legend('x(t) = 0.5*cos(2*pi*1000*t)', 'Demodulated Signal')
hold off;

figure
plot(t, x)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
hold on;
plot(t, demod_non, 'r')
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('DSB Signal Demodulation with a Phase Difference of 0.1π');
legend('x(t) = 0.5*cos(2*pi*1000*t)', 'Demodulated Signal')
hold off;

figure
plot(t, x)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
hold on;
plot(t, demod_loss, 'r')
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('DSB Signal Demodulation with Complete Energy Loss');
legend('x(t) = 0.5*cos(2*pi*1000*t)', 'Demodulated Signal')
hold off;
