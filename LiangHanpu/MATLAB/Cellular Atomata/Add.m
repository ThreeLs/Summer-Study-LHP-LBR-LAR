function Point = Add(XYPoint, p)
    [x, y] = find(XYPoint==0, 1);
    if isempty(x)
        XYPoint = [XYPoint; p];
    else
        XYPoint(x,:) = p;
    end
    
    Point = XYPoint;
end