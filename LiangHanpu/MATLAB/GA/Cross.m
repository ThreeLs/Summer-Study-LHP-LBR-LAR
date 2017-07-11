function New=Cross(Chrom,PCross,inter)

[l,c]=size(Chrom);

for i=1:l
    %%%选择两个交叉的染色体
    pick=rand(1,2);
    while pick==0
        pick=rand(1,2);
    end
    index1=ceil(pick.*l);

    %%%判断是否进行交叉
    pick=rand;
    if pick>PCross
        continue;
    else
        %%%选择交叉的位置
        pick=rand;
        while pick==0
            pick=rand;
        end
        index2=ceil(pick.*c);
    
        %%%进行交叉
        Chrom=Change(index1,index2,Chrom);
    end
end
New=Chrom;

end