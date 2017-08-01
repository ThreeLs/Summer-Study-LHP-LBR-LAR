function newCenterPoint = creatCenterPoint(class)
    for i = 1:2
        %ÇóÖÐÐÄ
        newCenterPoint(i) = mean(class(:,i));
    end
end