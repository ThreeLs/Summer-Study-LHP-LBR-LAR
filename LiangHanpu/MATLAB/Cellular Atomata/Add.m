function Point = Add(XYPoint, p)
    %find的两个参数：
    %第一个参数是一个逻辑表达式，即寻找XYPoint里面存在0的坐标
    %第二个参数1指的是返回找到“所有存在0的坐标”中的第一个坐标
    %输出两个参数，也就是“0在矩阵中的位置”在第x行第y列
    [x, y] = find(XYPoint==0, 1);
    %isempty(x)表示，如果x是个“空矩阵”，也就是说x里面什么都没有，也就是说没有找到坐标中存在0的点
    if isempty(x)
        %将p点直接放在矩阵最下面
        XYPoint = [XYPoint; p];
    else
        %如果找到了坐标中存在0的点，那么就把这个位置（存在0的位置）换成p点的位置
        XYPoint(x,:) = p;
    end
    
    Point = XYPoint;
end