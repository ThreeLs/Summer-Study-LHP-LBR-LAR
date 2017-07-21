function ChromFitness=Fitness(Chrom)
[a,b]=size(Chrom);
ChromFitness=zeros(a,1);

for i=1:a
    ChromFitness(i)=Chrom(i,1)+sin(Chrom(i,1))+Chrom(i,2)+sin(Chrom(i,2))+Chrom(i,3)+sin(Chrom(i,3))+Chrom(i,4)+sin(Chrom(i,4));
end
end