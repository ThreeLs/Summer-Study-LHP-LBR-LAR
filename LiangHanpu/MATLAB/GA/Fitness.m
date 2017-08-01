function ChromFitness=Fitness(Chrom,GuDingChrom)

[a, b]=size(Chrom);
%for i=1:a
%    ChromFitness(i,:)=min(sum(sqrt(power(GuDingChrom(i,1)-Chrom(i,1),2)+power(GuDingChrom(i,2)-Chrom(i,2),2))));
%end
for i=1:a
    ChromFitness(i,:)=sum(  sqrt(  (GuDingChrom-Chrom(i,1)).^2)  ) ;
end

end