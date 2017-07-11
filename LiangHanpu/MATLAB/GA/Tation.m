function New=Tation(Chrom,PMul,All,Now,inter)
[l,c]=size(Chrom);

for i=1:l
    %%%选择一个变异的染色体
    pick=rand;
    while pick==0
        pick=rand;
    end
    index1=ceil(pick.*l);

    %%%判断是否进行变异
    pick=rand;
    if pick>PMul
        continue;
    else
        %%%选择变异的位置
        pick=rand;
        while pick==0
            pick=rand;
        end
        index2=ceil(pick.*c);
    
        %%%进行变异
        pick=rand;
        fg=(rand*(1-Now/All))^2;
        if pick>0.5
             Chrom(index1,index2)=Chrom(index1,index2)+fg*Chrom(index1,index2);
        else
            Chrom(index1,index2)=Chrom(index1,index2)-fg*Chrom(index1,index2);
        end
        Chrom(index1,index2)=test(Chrom(index1,index2),inter(:,index2));
    end
end
New=Chrom;
end