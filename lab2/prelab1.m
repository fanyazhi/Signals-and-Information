 f = mysin_gen(440, 1, 1, 44100);
 ft_f = fft(f);
 Fs=44100;
 t=0:1/Fs:1;
 
 ift_f = ifft(ft_f);
 figure;
 plot(t,f);
 axis([0 1 -2 2]);
 % Approximation with Fourier decomposition
 y=0;
 N=100; 
 for r=1:2:N
    y=y+ft_f;
 end
 hold on;
 plot(t,ift_f,'r');
 xlabel('t');
 ylabel('magnitude');
 hold off;