clc, clear, close all

%初始的点有10个，第一列是X轴坐标，第二列是Y轴坐标
point = [0.5 0.5; 
    0.7 0.6;
    1.4 1.7;
    0.5 2.5;
    4 7.4;
    5 2;
    9.6 2.6;
    5.8 6.9;
    8.5 9;
    7.3 4.2];
[pointNum, ~] = size(point);
%新加的这一列是属于哪一类
point = [point zeros(pointNum, 1)];

%每个类的初始中心
centerPoint = [1 1; 4 4; 8 8;];
[classNum, ~] = size(centerPoint);

%误差限
stdSigma = 0.01;

iter = 1000;
for i = 1:iter
    %寻找距离最近的中心并归类
    point = findShortest(point, centerPoint);
    %计算每一类的新中心值
    newCenterPoint = calCenterPoint(point, classNum);
    %比较与原中心点的距离
    sigma = sum(sqrt(sum(newCenterPoint-centerPoint,2).^2));
    if sigma <stdSigma
        %误差在一定范围内则可以跳出
        centerPoint = newCenterPoint;
        break
    end
    centerPoint = newCenterPoint;
end
fig = makePlot(point, centerPoint);
centerPoint