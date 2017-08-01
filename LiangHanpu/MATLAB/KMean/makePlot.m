function fig = makePlot(point, centerPoint)
    [N2, ~] = size(centerPoint);
    scatter(point(:,1), point(:,2), '*k')
    hold on
    scatter(centerPoint(:,1), centerPoint(:,2), 'ok', 'filled')
    %对每个聚类中心作图
    for i = 1:N2
        %每个点对该聚类中心的连线
        class = point(point(:,3)==i,1:2);
        [N1, ~] =size(class);
        for j = 1:N1
            %某个点对其中心的连线
            this = plot([centerPoint(i, 1) class(j, 1)], [centerPoint(i, 2) class(j, 2)]);
            set(this, 'Color', [0 i/N2 0])
        end
    end
    grid on
    hold off
    fig = 0;
end