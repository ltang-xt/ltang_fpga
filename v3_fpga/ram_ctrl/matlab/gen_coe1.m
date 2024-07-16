clc;
%清空命令行信息
clear all;
%清空workspace
n=0:255;
%产生256个幅值相位点
sindata=sin(2*pi.*n/256)*127;
%离散的把一个正弦波周期分成256份
%plot(sindata);
%绘制波形,把sindata绘制出来
%matlab 里边数组的index 是从1开始，而C语言里是index是从0
sindata(sindata<0)=256+sindata(sindata<0);
%搜索数组内小于0的值+256并且替换原来负值
sindata=fix(sindata);
%因为ram中无法存储小数，只能把小数部分省略掉3.2--->3使用fix函数进行整数化
%操作文件的时候学会三个函数fopen,fprinf,fclose
fid=fopen('data1.coe','w');
%打开文件
fprintf(fid,'MEMORY_INITIALIZATION_RADIX=10; \n');
fprintf(fid,'MEMORY_INITIALIZATION_VECTOR= \n');
fprintf(fid,'%d ,\n',sindata(1:end-1));
fprintf(fid,'%d ;\n',sindata(end:end));
fclose(fid);
