function Point = Del(XYPoint, p)
    [count, ~] = size(XYPoint);
    for i = 1:count
        if XYPoint(i,:) == p
            XYPoint(i,:) = [0 0];
            break
        end
    end
    Point = XYPoint;
end