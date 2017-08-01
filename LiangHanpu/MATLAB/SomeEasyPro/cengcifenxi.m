clc,clear

n = 5;
N = 1:11;
RI = [0 0 0.58 0.90 1.12 1.24 1.32 1.41 1.45 1.49 1.51];
point = find(N==n);
reRI = RI(point)
