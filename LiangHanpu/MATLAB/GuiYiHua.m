function newdata = GuiYiHua(data)


%归一化
[l, c] = size(data); %size()函数，是用来输出data的大小
newData = zeros(l, c); %zeros()函数，建立一个l行，c列的全零矩阵

%循环每一行
for i = 1:l
    newData(i,:) = data(i,:) / sum(data(i,:));
end

end
