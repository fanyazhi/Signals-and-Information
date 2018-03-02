d = 1;
fs = 44100;
C4 = mysin_gen(246.9417, 1, d, fs);
A4 = mysin_gen(440, 1, d, fs);



y = myamodulate(C4, 440-261.6256, d, fs);
t=0:1/fs:1;
plot(t, y);
[X, f] = toofast_toofourier(y, fs);