clc, clear, close all

%��ʼ�ĵ���10������һ����X�����꣬�ڶ�����Y������
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
%�¼ӵ���һ����������һ��
point = [point zeros(pointNum, 1)];

%ÿ����ĳ�ʼ����
centerPoint = [1 1; 4 4; 8 8;];
[classNum, ~] = size(centerPoint);

%�����
stdSigma = 0.01;

iter = 1000;
for i = 1:iter
    %Ѱ�Ҿ�����������Ĳ�����
    point = findShortest(point, centerPoint);
    %����ÿһ���������ֵ
    newCenterPoint = calCenterPoint(point, classNum);
    %�Ƚ���ԭ���ĵ�ľ���
    sigma = sum(sqrt(sum(newCenterPoint-centerPoint,2).^2));
    if sigma <stdSigma
        %�����һ����Χ�����������
        centerPoint = newCenterPoint;
        break
    end
    centerPoint = newCenterPoint;
end
fig = makePlot(point, centerPoint);
centerPoint