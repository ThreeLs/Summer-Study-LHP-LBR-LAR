clc,clear


GuDingChrom=[100,120,160,270,280,300,310,355,378,487,499,562,589,532,543,654,678,621,659,660,633,688,634,651,698,700,798,735,781,745,800,834,890,901,932,873,802,1000]';

x=100:1000;
[a, b] = size(x)
for i=1:b
    ChromFitness(i)=sum(  sqrt(  (GuDingChrom-x(i)).^2)  ) ;
end
min(ChromFitness)