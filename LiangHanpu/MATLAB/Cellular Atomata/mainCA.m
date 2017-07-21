clc,clear, close all

%令整个声明区域的大小为M*N
M = 50; 
N = 50; 
CASize = [M, N];  %将M, N做成向量，易于引用
CellSitu = zeros(M, N); %建立一个“状态矩阵”，若CellSitu(i, j)=0，则说明(i, j)点是“死”的，若为1，则为“活”
%XYPoint是一个多行2列的矩阵，第一列是X坐标，第二列是Y坐标。这个矩阵是用来存放“初始时刻‘活’的点”
XYPoint = [25 10; 25 11; 25 12; 25 13; 25 14; 25 15; 25 16; 25 17;
    25 20; 25 21; 25 22; 25 23; 25 24; 25 25; 25 26; 25 27]; 

iter = 20; %迭代次数为20次
CAMovie = moviein(iter); %制作动画，提前说明帧数为iter个


[count, ~] = size(XYPoint); %count用来记录XYPoint有多少行
for i = 1:count
    CellSitu(XYPoint(i,1), XYPoint(i,2)) = 1; %将“活”的点在CellSitu里面的值修改成1
end

for i = 1:iter
    CAMovie(:,i) = CAPlot(XYPoint, CASize); %输出当前状态“活”与“死”的点的分布图，并保存在CAMovie中
    [CellSitu, XYPoint] = Change(CellSitu, CASize , XYPoint);  %用来计算“下一时刻”（下一次迭代中）时，“活”的点与“死”的点分布状态以及坐标
end

movie(CAMovie, 1, 10) %做出动画来