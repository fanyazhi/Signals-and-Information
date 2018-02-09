
function y = my_echo(x,d,a)
mydelay = zeros(1,floor(d*100));
size(x)
y = horzcat(mydelay,x(1:length(x)-length(mydelay)));
y = y*a;
y=(y+x)';

end