clc;
%�����������Ϣ
clear all;
%���workspace
n=0:255;
%����256����ֵ��λ��
sindata=sin(2*pi.*n/256)*127;
%��ɢ�İ�һ�����Ҳ����ڷֳ�256��
%plot(sindata);
%���Ʋ���,��sindata���Ƴ���
%matlab ��������index �Ǵ�1��ʼ����C��������index�Ǵ�0
sindata(sindata<0)=256+sindata(sindata<0);
%����������С��0��ֵ+256�����滻ԭ����ֵ
sindata=fix(sindata);
%��Ϊram���޷��洢С����ֻ�ܰ�С������ʡ�Ե�3.2--->3ʹ��fix��������������
%�����ļ���ʱ��ѧ����������fopen,fprinf,fclose
fid=fopen('data1.coe','w');
%���ļ�
fprintf(fid,'MEMORY_INITIALIZATION_RADIX=10; \n');
fprintf(fid,'MEMORY_INITIALIZATION_VECTOR= \n');
fprintf(fid,'%d ,\n',sindata(1:end-1));
fprintf(fid,'%d ;\n',sindata(end:end));
fclose(fid);
