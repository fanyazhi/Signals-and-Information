function x = mybeat(freq1, phase1, freq2, phase2, d, fs)
% Returns the sum of two sinusoids with specified frequency and phases
% with duration d sampled at frequency fs

x1 = mysin_gen(freq1, phase1, 1, fs);
x2 = mysin_gen(freq2, phase2, 1, fs);
x = x1 + x2;
% K = d*fs;
% k = -K:K;
% f0 = gcd(freq1, freq2);
% X = freqz(x, 1, k*2*pi*f0/fs)/length(x);
% 
% figure()
% subplot(2, 1, 1),
% stem(k, abs(X), 'LineWidth', 2)
% title('Magnitude Spectrum of x(t)', 'FontSize', 16)
% xlabel('k', 'FontSize', 14)
% ylabel('|a_k|', 'FontSize', 14)
% grid
% 
% subplot(2, 1, 2),
% stem(k, angle(X), 'LineWidth', 2)
% title('Phase Spectrum of x(t)', 'FontSize', 16)
% xlabel('k', 'FontSize', 14)
% ylabel('arg(a_k)', 'FontSize', 14)
% grid










