function newCenterPoint = calCenterPoint(point, classNum)
    for i = 1:classNum
        %���ڵ�i������е�
        %�������Ҫ����ѧ��
        class = point(point(:,3)==i,:);
        %���㵱ǰ������ĵ�
        newCenterPoint(i,:) = creatCenterPoint(class);
    end
end