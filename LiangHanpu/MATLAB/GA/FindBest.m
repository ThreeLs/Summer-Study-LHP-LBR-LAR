function BestChrom=FindBest(ChromFitness,Chrom)

%%%计算适应度的函数
[a,b]=min(ChromFitness);

%%%将最佳的放进
BestChrom=[Chrom(b,:) a];
end
