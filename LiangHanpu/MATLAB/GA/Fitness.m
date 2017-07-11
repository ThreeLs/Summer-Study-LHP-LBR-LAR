function ChromFitness=Fitness(Chrom)
[a,b]=size(Chrom);
ChromFitness=zeros(a,1);

for i=1:a
    ChromFitness(i)=Chrom(i,1)+Chrom(i,2)+Chrom(i,4)+Chrom(i,3)*Chrom(i,2);
end
end