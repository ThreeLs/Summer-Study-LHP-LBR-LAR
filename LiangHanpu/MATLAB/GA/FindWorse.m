function [WorseChrom,index]=FindWorse(ChromFitness,Chrom)

%%%计算适应度的函数
[a,b]=min(ChromFitness);

%%%将最劣的放进
WorseChrom=[Chrom(b,:) a];
index=b;
end