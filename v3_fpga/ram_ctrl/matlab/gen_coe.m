clear all;
clc;
%����256�����Ҳ�
n=0:255;
%����-127 + 127�������ź�
sindata=fix(sin(2*pi*n/256)*127);
%�����Ʋ��룬����Ǹ�ֵ��ȡ��+1 ��ʵ����+256����
sindata(sindata<0)=sindata(sindata<0)+256;
fid=fopen('data.coe','w+');
fprintf(fid,'MEMORY_INITIALIZATION_RADIX=10; \n');
fprintf(fid,'MEMORY_INITIALIZATION_VECTOR= \n');
%��ӡ���ı�����ΪCoe ��
fprintf(fid,'%d,\n',sindata(1:end-1));
fprintf(fid,'%d;\n',sindata(end:end));
fclose(fid);
