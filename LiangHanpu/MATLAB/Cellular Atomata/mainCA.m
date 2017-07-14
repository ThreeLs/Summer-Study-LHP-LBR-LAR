clc,clear, close all


M = 50; 
N = 50; 
CASize = [M, N]; 
CellSitu = zeros(M, N); 
XYPoint = [25 10; 25 11; 25 12; 25 13; 25 14; 25 15; 25 16; 25 17;
    25 20; 25 21; 25 22; 25 23; 25 24; 25 25; 25 26; 25 27]; 
iter = 20; 
CAMovie = moviein(iter); 

[count, ~] = size(XYPoint);
for i = 1:count
    CellSitu(XYPoint(i,1), XYPoint(i,2)) = 1;
end

for i = 1:iter
    CAMovie(:,i) = CAPlot(XYPoint, CASize);
    [CellSitu, XYPoint] = Change(CellSitu, CASize , XYPoint); 
end

movie(CAMovie, 1, 10)