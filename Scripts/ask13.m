mu = 0;
sigma = 2;
v = sigma*randn(1000, 512) + mu;  % Generate 1000 sequences of Gaussian noise
avgPsd = 0;
sumPsd = 0;
for i = 1:1000
    V(i,:) = abs(fft(v(i,:))).^2 / 512;
    sumPsd = sumPsd + V(i,:);
end
avgPsd = sumPsd / 1000;
avgPsd1 = mean(V);

plot(avgPsd1)
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Average PSD of 1000 sequences');
