function Point = Del(XYPoint, p)
    [count, ~] = size(XYPoint);
    %利用循环一个一个找，如果在XYPoint中存在坐标p，那么就把这个位置的坐标变成(0, 0)，这样方面在Add中进行寻找
    for i = 1:count
        if XYPoint(i,:) == p
            XYPoint(i,:) = [0 0];
            %如果找到了，那就直接跳出循环
            break
        end
    end
    Point = XYPoint;
end