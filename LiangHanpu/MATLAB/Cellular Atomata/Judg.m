function Num = Judg(Cell, Point, CASize)
    Num = 0;
    %利用循环寻找坐标Point周围8个点（排除了他自身）的存活状态
    for i = Point(1)-1:Point(1)+1
        for j = Point(2)-1:Point(2)+1
            %之所以重新赋值X, Y，只因为坐标点很可能因为越界而被我改变。看下面详情。
            X = i;
            Y = j;
            %接下来的4个if用来判断“目前的点是否越界了，如果越界就让他等于直接变成另一侧对应的点”
            if X == 0
                X = CASize(1);
            end
            if X == CASize(1)+1
                X = 1;
            end
            if Y == 0
                Y = CASize(2);
            end
            if Y == CASize(2)+1
                Y = 1;
            end
            %这个if用来判断是不是他本身
            if X == Point(1) && Y == Point(2)
                continue
            end
            %如果这个点是活的，那就统计+1
            if Cell(X, Y) == 1
                Num = Num+1;
            end
        end
    end
end