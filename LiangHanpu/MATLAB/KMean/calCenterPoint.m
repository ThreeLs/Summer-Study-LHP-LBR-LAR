function newCenterPoint = calCenterPoint(point, classNum)
    for i = 1:classNum
        %处于第i类的所有点
        %这个技巧要理解和学会
        class = point(point(:,3)==i,:);
        %计算当前类的中心点
        newCenterPoint(i,:) = creatCenterPoint(class);
    end
end