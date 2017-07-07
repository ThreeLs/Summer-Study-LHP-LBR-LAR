clc, clear

%载入数据
data = [1002, 987, 1243, 1235; 0.45, 0.34, 0.24, 0.75; 123, 457, 234, 754];
%l是行数，s是列数
[l, c] = size(data);

%归一化
data = GuiYihHua(data);

%基础参数
S = ones(l, c);
K = 1/ln(l);
e = zeros(1, c)
d = zeros(1, c)

for i = 1:c
    S(:,i) = data(:,i) / sum(data(:,i));
    e(i) = -K * sum(S(j, i).*ln(S(j, i)));
    d(i) = 1-e(i);
end

w = d / sum(d);
