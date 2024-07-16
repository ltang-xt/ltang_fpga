clear all;
clc;
%产生256点正弦波
n=0:255;
%产生-127 + 127的正弦信号
sindata=fix(sin(2*pi*n/256)*127);
%二进制补码，如果是负值就取反+1 其实就是+256即可
sindata(sindata<0)=sindata(sindata<0)+256;
fid=fopen('data.coe','w+');
fprintf(fid,'MEMORY_INITIALIZATION_RADIX=10; \n');
fprintf(fid,'MEMORY_INITIALIZATION_VECTOR= \n');
%打印到文本里因为Coe 。
fprintf(fid,'%d,\n',sindata(1:end-1));
fprintf(fid,'%d;\n',sindata(end:end));
fclose(fid);
