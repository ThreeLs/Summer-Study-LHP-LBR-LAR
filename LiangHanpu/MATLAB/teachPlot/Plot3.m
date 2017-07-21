clc,clear,close all

x = 0:pi/10:2*pi;
y1 = sin(x);
y2 = cos(x); 

%subplot(行数， 列数， 第几个图)
subplot(1,2,1)
plot(x,y1,'--ks')
hold on
title('正弦函数')
xlabel('x轴')
ylabel('y轴')


subplot(1,2,2)
plot(x,y2,'--ko')
title('余弦函数')