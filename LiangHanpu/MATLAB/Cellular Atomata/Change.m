function [NewCell, XYPoint] = Change(Cell, CASize, XYPoint)
    NewCell = Cell;
    for i = 1:CASize(1)
        for j = 1:CASize(2)
            Num = Judg(Cell, [i, j], CASize);
            if Num == 3
                if Cell(i, j) == 0
                    NewCell(i ,j) = 1;
                    XYPoint = Add(XYPoint, [i, j]);
                end
            else if Num < 2
                    NewCell(i, j) = 0;
                    XYPoint = Del(XYPoint, [i, j]);
                else if Num >3
                        NewCell(i, j) = 0;
                    end
                end
            end
        end
    end
end