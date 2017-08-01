function newPoint = findShortest(point, centerPoint)
    [N, ~] = size(point);
    for i = 1:N
        %ÕÒ×îÐ¡µÄ
        [~, minPoint] = min(sqrt((point(i,1:2)-centerPoint).^2));
        point(i, 3) = minPoint(1);
    end
    newPoint = point;
end