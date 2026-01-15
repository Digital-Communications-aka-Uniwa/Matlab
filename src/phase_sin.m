function [ph, f] = phase_sin(x, T)

dt = T/100
BW = 1/dt
N = length(x)
df = BW/N
Start = -BW/2
Step = df
End = BW/2-df
f = Start:Step:End;
ph = fft(x);
ph = fftshift(ph)/N;

end