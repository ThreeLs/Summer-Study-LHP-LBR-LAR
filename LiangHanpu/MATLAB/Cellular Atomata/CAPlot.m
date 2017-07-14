function Get = CAPlot(XYPoint, CASize)
    scatter(XYPoint(:,1), XYPoint(:,2), 'ks', 'filled');
    axis([0 CASize(1) 0 CASize(2)])
    Get = getframe;
end