clc,clear,close all
t0 = clock;

%%%��Ⱥ��Ϣ
N=380; %��Ⱥ����
iter=10000; %��������
ChromNum=1; %Ⱦɫ��ڵ���
inter=[100 ; 1000 ]; %Ⱦɫ��ֵ����
GuDingChrom=[100,120,160,270,280,300,310,355,378,487,499,562,589,532,543,654,678,621,659,660,633,688,634,651,698,700,798,735,781,745,800,834,890,901,932,873,802,1000]';
Chrom=zeros(N,ChromNum); %��Ⱥ����Ⱦɫ��
BestChrom=zeros(1,ChromNum+1); %��Ⱥ����Ⱦɫ��
EveryBest=zeros(1,iter+1); %���д��е�������Ӧ��
ChromFitness=zeros(N,1); %ÿһ����Ⱥ����Ӧ��
AvaFit=zeros(1,iter+1); %ƽ����Ӧ��

%%%������Ϣ
PCross=0.4;
PMul=0.6;

%%%��ʼ����Ⱥ
Chrom=ProductChrom(N,ChromNum,inter);
ChromFitness=Fitness(Chrom,GuDingChrom);
BestChrom=FindBest(ChromFitness,Chrom);
EveryBest(1)=BestChrom(ChromNum+1);
AvaFit(1)=sum(ChromFitness)/N;

%%%����
for i=1:iter
    %%%��Ȼѡ��(����)
    [Chrom,~]=Select(Chrom,ChromFitness,N);

    %%%��������
    Chrom=Cross(Chrom,PCross,inter);
    
    %%%�������
    Chrom=Tation(Chrom,PMul,iter,i,inter);
    
    %%%������Ӧ��
    ChromFitness=Fitness(Chrom,GuDingChrom);
    
    %%%Ѱ������\��Ⱦɫ��
    NewBestChrom=FindBest(ChromFitness,Chrom);
    [WorseChrom,WorseIndex]=FindWorse(ChromFitness,Chrom);
    
    %%%������һ������õ�Ⱦɫ��
    if NewBestChrom(ChromNum+1)<BestChrom(ChromNum+1)
        BestChrom=NewBestChrom;
    end
    
    %%%�滻�����ӵ�
    Chrom(WorseIndex,:)=BestChrom(1:ChromNum);
    ChromFitness(WorseIndex)=BestChrom(ChromNum+1);
    
    %%%��¼ÿһ���������Ӧ�Ⱥ�ƽ����Ӧ��
    AvaFit(i+1)=sum(ChromFitness)/N;
    EveryBest(i+1)=BestChrom(ChromNum+1);
end

%%%��ͼ
X=1:iter+1;
figure(2)
plot(X,EveryBest);
hold on
plot(X,AvaFit);
legend('������Ӧ��','ƽ����Ӧ��')
BestChrom

runTime = etime(clock, t0)
