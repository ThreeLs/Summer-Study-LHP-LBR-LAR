clc,clear,close all
t0 = clock;

%%%种群信息
N=200; %种群样本
iter=10000; %迭代次数
ChromNum=4; %染色体节点数
inter=[0 0 0 0; 10 10 10 10]; %染色体�?区间

Chrom=zeros(N,ChromNum); %种群个体染色�?
BestChrom=zeros(1,ChromNum+1); %种群�?��染色�?
EveryBest=zeros(1,iter+1); %�?��代中的最优�?应度
ChromFitness=zeros(N,1); %每一代种群的适应�?
AvaFit=zeros(1,iter+1); %平均适应�?

%%%概率信息
PCross=0.3;
PMul=0.2;

%%%初始化种�?
Chrom=ProductChrom(N,ChromNum,inter)
ChromFitness=Fitness(Chrom);
BestChrom=FindBest(ChromFitness,Chrom);
EveryBest(1)=BestChrom(ChromNum+1);
AvaFit(1)=sum(ChromFitness)/N;

%%%迭代
for i=1:iter
    Chrom=Cross(Chrom,PCross,inter);
    
    Chrom=Tation(Chrom,PMul,iter,i,inter);
    
    %%%计算适应�?
    ChromFitness=Fitness(Chrom);
    
    %%%寻找�?��\劣染色体
    NewBestChrom=FindBest(ChromFitness,Chrom);
    [WorseChrom,WorseIndex]=FindWorse(ChromFitness,Chrom);
    
    %%%代替上一次中�?��的染色体
    if NewBestChrom(ChromNum+1)>BestChrom(ChromNum+1)
        BestChrom=NewBestChrom;
    end
    
    %%%替换掉最劣的
    Chrom(WorseIndex,:)=BestChrom(1:ChromNum);
    ChromFitness(WorseIndex)=BestChrom(ChromNum+1);
    
    %%%记录每一代的�?��适应度和平均适应�?
    AvaFit(i+1)=sum(ChromFitness)/N;
    EveryBest(i+1)=BestChrom(ChromNum+1);
end

%%%作图
X=1:iter+1;
figure(2)
plot(X,EveryBest);
hold on
plot(X,AvaFit);

BestChrom

runTime = etime(clock, t0)

