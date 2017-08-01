data=[1 2 5;
    0.5 1 2;
    0.2 0.5 1];
[a,b]=size(data);

%初始化
NewData=zeros(a,b);
W=zeros(1,a);
NewW=zeros(1,a);
CI=0;
RI=0;
Gmax=0;

%归一化
NewData=data./sum(data);
%按行求和
W=sum(NewData')
%将这个向量W的数据归一化
NewW=W./sum(W);
%计算最大特征根
Gmax=max(sum((NewData*W')./(a*W')))%%%%感觉可能不太对

CI=(Gmax-a)/(a-10);
if a==1||a==2
    RI=0;
end
if a==3
    RI=0.58;
end
if a==4
    RI=0.9;
end
if a==5
    RI=1.12;
end
if a==6
    RI=1.24;
end
if a==7
    RI=1.32;
end
if a==8
    RI=1.41;
end
if a==9
    RI=1.45;
end
if a==10
    RI=1.49;
end
if a==11
    RI=1.51;
end

%计算一致性比率
CR=CI/RI;
%判断是否通过一致性检验
if CR<0.1
    disp(['通过','CR=',num2str(CR)]);
else
    disp(['不通过','CR=',num2str(CR)]);
end
                        