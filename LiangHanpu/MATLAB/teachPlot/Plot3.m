clc,clear,close all

x = 0:pi/10:2*pi;
y1 = sin(x);
y2 = cos(x); 

%subplot(������ ������ �ڼ���ͼ)
subplot(1,2,1)
plot(x,y1,'--ks')
hold on
title('���Һ���')
xlabel('x��')
ylabel('y��')


subplot(1,2,2)
plot(x,y2,'--ko')
title('���Һ���')