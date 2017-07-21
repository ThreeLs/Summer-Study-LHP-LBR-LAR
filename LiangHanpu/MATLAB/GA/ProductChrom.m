function chrom=ProductChrom(N,ChromNum,inter)
a = ones(N, 1);
chrom = (a*(inter(2,:)-inter(1,:)).*rand(N,ChromNum)+a*inter(1,:));

end