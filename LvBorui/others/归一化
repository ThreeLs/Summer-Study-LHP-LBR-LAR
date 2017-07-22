clc, clear

%载入数据
data = [1002, 987, 1243, 1235; 0.45, 0.34, 0.24, 0.75; 123, 457, 234, 754];
%%每一行是一个指标，每一列是一种方案


%归一化
[l, c] = size(data);
newData = zeros(l, c);
%循环每一行
for i = 1:l
    newData(i,:) = data(i,:) / sum(data(i,:));
end

newData
