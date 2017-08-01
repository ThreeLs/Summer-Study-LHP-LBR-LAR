clc, clear

%导入数据
data = xlsread('xxx.xlsx', 'Sheet1', 'xx:xx');
[l, c] = size(data);

%归一化
data = data ./ sum(data);

%正负理想解
stard = [max(data); min(data)];

%正负接近度
S = zeros(l, 2);
for i = 1:2
    S(:,i) = sqrt(  sum(  (  data-stard(i,:)  ).^2  )  );
end

%相对接近度
C = S(:,2)./(S(:,2)+S(:,1))

