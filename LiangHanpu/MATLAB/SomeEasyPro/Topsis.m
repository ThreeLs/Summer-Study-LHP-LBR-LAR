clc, clear

%��������
data = xlsread('xxx.xlsx', 'Sheet1', 'xx:xx');
[l, c] = size(data);

%��һ��
data = data ./ sum(data);

%���������
stard = [max(data); min(data)];

%�����ӽ���
S = zeros(l, 2);
for i = 1:2
    S(:,i) = sqrt(  sum(  (  data-stard(i,:)  ).^2  )  );
end

%��Խӽ���
C = S(:,2)./(S(:,2)+S(:,1))

