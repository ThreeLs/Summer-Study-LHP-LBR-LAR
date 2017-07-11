function chrom=ProductChrom(N,ChromNum,inter)
chrom=(inter(2)-inter(1))*rand(N,ChromNum)+inter(1);
end