close all;
clear all;
clc;
n = 2;

raw = zeros(576,720,3,n);
for i = 1:n
    filename = strcat('F:\һ��\һ���ٶ�ͬ����\DSP\MATLAB\', int2str(i), '.bmp');
    raw(:, :, :, i) = imread(filename);
end

for i = 1:n-1
    V = HSoptflow(raw, i);
end