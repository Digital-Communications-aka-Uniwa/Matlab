f = 1e3;
t = 2;

fs_x = 2e4;
dt_x = 1/fs_x;
Start_x = 0;
Step_x = dt_x;
End_x = t;
t_x = Start_x:Step_x:End_x;
x = sin(2*pi*f*t_x);

fs_y = 1.5e3;
dt_y = 1/fs_y;
Start_y = 0;
Step_y = dt_y;
End_y = t;
t_y = Start_y:Step_y:End_y;
y = sin(2*pi*f*t_y);

dt_sine = 1/2e3;
Start_sine = 0;
Step_sine = dt_sine;
End_sine = t;
t_sine = Start_sine:Step_sine:End_sine;
sine = sin(2*pi*1.5e3*t_sine);

soundsc(x, fs_x);
pause(t);
soundsc(y, fs_y);
pause(t);
soundsc(desired_signal, 1.5e3);

subplot(2, 1, 1);
hold on;
plot(t_x, x, 'b')
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Aliasing Phenomenon');
plot(t_y, y, 'r')
legend('20 kHz Signal', '1.5 kHz Signal');
hold off;

subplot(2, 1, 2);
plot(t_sine, sine)
xlabel('Time (sec)');
ylabel('Amplitude (Volt)');
title('Sinusoidal Signal');
