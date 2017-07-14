function Num = Judg(Cell, Point, CASize)
    Num = 0;
    for i = Point(1)-1:Point(1)+1
        for j = Point(2)-1:Point(2)+1
            X = i;
            Y = j;
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
            if X == Point(1) && Y == Point(2)
                continue
            end
            if Cell(X, Y) == 1
                Num = Num+1;
            end
        end
    end
end