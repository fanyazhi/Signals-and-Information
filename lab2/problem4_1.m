% %%%4.1
% f = 440;
% d = 1;
% fs = 44100;
% A4 = mysin_gen(f, 1, d, fs);
% x = 0:d*fs;
% plot(x, A4)
% 
% [X, k] = fs_fft(A4, fs, f, d*fs);

%%4.3
% d = 1;
% fs = 44100;
% A4 = 440;
% F4 = 349.2282;
% x = mybeat(A4, 1, F4, 1, d, fs);
% [X, f] = toofast_toofourier(x, fs);

%%%4.4
d = 1;
fs = 44100;
C4 = mysin_gen(246.9417, 1, d, fs);
F4 = 349.2282;

y = myamodulate(C4, F4, d, fs);
[X, f] = toofast_toofourier(y, fs);