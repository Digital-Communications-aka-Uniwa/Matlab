mu1 = 0;
sigma1 = 2;
noise1 = sigma1*randn(1, 1e5) + mu1;
noiseLength = length(noise1);   % Length of noise1

mu2 = 2;
sigma2 = 1;
noise2 = sigma2*randn(1, 1e5) + mu2;

figure
subplot(2, 1, 1)
plot(noise1)
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('White noise with σ = 2 and mean μ = 0');

subplot(2, 1, 2)
plot(noise2)
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('White noise with σ = 1 and mean μ = 2');

figure
periodogram(noise1)
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
hold on;
periodogram(noise2, 'r')
xlabel('Frequency Domain (Hz)');
ylabel('Amplitude (Volt)');
title('Periodograms of White Noises');
legend('μ = 0, σ = 2', 'μ = 2, σ = 1')
hold off;
