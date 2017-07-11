function newChrom=test(Chrom,inter)
X=sum(Chrom<inter(1)|Chrom>inter(2));
if X==0
    newChrom = Chrom;
else if Chrom-inter(1)>inter(2)-Chrom
        newChrom = inter(2);
    else
        newChrom = inter(1);
end
end
