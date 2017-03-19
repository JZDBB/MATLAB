close all;
clear all;
clc;
n = 2;

raw = zeros(300,400,3,n);
for i = 1:n
    filename = strcat('F:\一宁\一宁百度同步盘\DSP\MATLAB\', int2str(i), '.bmp');
    raw(:, :, :, i) = imread(filename);
end

for i = 1:n-1
    V = HSoptflow(raw, i);
end