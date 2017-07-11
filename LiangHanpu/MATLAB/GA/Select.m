function [New1,New2]=Select(Chrom,ChromFitness,N)
%%%每一个个体存活下来的概率(越大越好)
MinFitness=min(ChromFitness);
ChromFitness_F=ChromFitness-MinFitness+abs(1/MinFitness);
P=ChromFitness_F/sum(ChromFitness_F);

index=[];
for i=1:N
    pick=rand;
    while pick==0
        pick=rand;
    end
    for i=1:N
        pick=pick-P(i);
        if pick<0
            index=[index i];
            break;
        end
    end
end

New1=Chrom(index,:);
New2=ChromFitness(index);
end