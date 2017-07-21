function Get = CAPlot(XYPoint, CASize)
    %做个散点图，因为“死”的点是白色的，也就是背景色，所以我只做“活”的点，为黑色
    %'ks'就是黑色正方形（这个正方形是个空心正方形）
    %用'filled'命令来将空心正方形填充成实心正方形
    scatter(XYPoint(:,1), XYPoint(:,2), 'ks', 'filled');
    axis([0 CASize(1) 0 CASize(2)])
    %获取图像
    Get = getframe;
end