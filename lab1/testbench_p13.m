% ECE 2200 lab1
% Author: Yingqiu Cao (CC)
% Date: 2/6/18

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% generating the input signals for test %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% generating the time sequence  %%
duration = 30; % sample time, in sec
sample_fre = 100; % sample frequency, in Hz
t = 0:1/sample_fre:duration; % time sequence of the signal

% matrix to store the test signals
signal = zeros(3,length(t));

% generating the cosine signal
signal(1,:) = cos(2*pi*t);

% generating the decaying cos
signal(2,:) = exp(-0.9*t).*cos(2*pi*t);

% generating the square wave    %%  
T = 1; % period of the square wave, in sec
duty = 50; % duty cycle of the square wave, in percentage
signal(3,:) = square( 2*pi/T.*t, duty ); % generate the square wave
% plot(t,signal);
% axis([0 duration -1.1 1.1]);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% running the test case for my_echo()    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
delay = duration*0.6*(rand(1,3)+0.5);  % make sure the delay is smaller than 
% the duration of the signal
a = (rand(1,3)+0.2)*0.8;

% test my_echo()
for i = 1:3
    signal_out = my_echo(signal(i,:), delay(i), a(i));
    figure(i),
    plot(t,signal(i,:),t,signal_out,'r--');
    xlabel('time','FontSize',12);
    ylabel('signal','FontSize',12);
    % creating legend
    legend('original signal','output signal');
    % print out delay time and amplification ratio
    str = sprintf(' delay: %.2f sec \n a: %.2f ',delay(i),a(i));
    annotation('textbox','String',str,'FitBoxToText','on');
end