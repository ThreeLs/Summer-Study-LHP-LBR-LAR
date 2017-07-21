function [NewCell, XYPoint] = Change(Cell, CASize, XYPoint)
    NewCell = Cell;
    %下面的两个for是将图中的所有点都遍历一遍，
    for i = 1:CASize(1)
        for j = 1:CASize(2)
            %Judg()用来判断在点(i, j)处，周围“活”的点有多少个，用Num来储存
            %注意，这里是用Cell来判断
            Num = Judg(Cell, [i, j], CASize);
            %如果周围“活”的点数等于3，如果当前点是“死”的，那就让他活过来，并且把这个点放到用来存储活的点的矩阵XYPoint中
            if Num == 3
                if Cell(i, j) == 0
                    %注意，这里是修改了NewCell而不是Cell
                    %这是因为，Cell不做修改，用来判断在稳定状态下周围的存活点数
                    %如果Cell被修改了，那么测出来的点数就会不准
                    NewCell(i ,j) = 1;
                    %将(i, j)放进XYPoint里面（Add函数的内容比较难理解，细节看函数内部注释）
                    XYPoint = Add(XYPoint, [i, j]);
                end
                %如果周围“活”的点数小于2，那么就让这个点“死了”，即状态变为0.同时删去XYPoint中这个点的坐标
            else if Num < 2
                    NewCell(i, j) = 0;
                    XYPoint = Del(XYPoint, [i, j]);
                    %如果周围活的点数大于3，那么同样死了，删坐标
                else if Num >3
                        NewCell(i, j) = 0;
                        XYPoint = Del(XYPoint, [i, j]);
                    end
                end
            end
        end
    end
end