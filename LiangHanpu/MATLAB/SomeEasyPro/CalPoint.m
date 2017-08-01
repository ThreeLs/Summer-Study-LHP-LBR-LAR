clc, clear

%两列N行，第一列为x坐标，第二列为y坐标，共N个坐标点
data = xlsread('xxx.xlsx', 'Sheet1', 'xx:xx');

%X轴和Y轴的范围
XRange = [-10 10];
YRange = [-5 5];

Xcr = XRange(1):0.1:XRange(2);
Ycr = Yrange(1):0.1:YRange(2);

[XCR, YCR] = meshgrid(Xcr, Ycr);

 