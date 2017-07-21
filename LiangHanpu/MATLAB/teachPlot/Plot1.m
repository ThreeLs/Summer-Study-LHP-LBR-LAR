clc, clear,close all
%plot([1 2], [1 2])

%x = 0:0.1:10;
%y = sin(x);
%plot(x, y)

x = 0:pi/10:2*pi;
y1 = sin(x);
y2 = cos(x);
plot(x, y1, '--ks')
hold on
plot(x, y2, '--ko')
hold off
grid on
legend('ีýฯาว๚ฯ฿','ำเฯาว๚ฯ฿')

axis([-1 7 -2 2])
%axis([xmin xmax ymin ymax])
