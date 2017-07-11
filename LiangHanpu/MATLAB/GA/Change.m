function New=Change(index1,index2,Chrom)
    temp=Chrom(index1(1),index2);
    Chrom(index1(1),index2)=Chrom(index1(2),index2);
    Chrom(index1(2),index2)=temp;
    New=Chrom;
end