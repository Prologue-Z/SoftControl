function [] = Plot_OmegaNorm2(t,Norm2_Omega)
% ���οռ���ٶȶ�����ͼ��

plot(t(1:35000),Norm2_Omega(1,1:35000)','LineWidth',2); 
hold on;

grid on;%������
title('���Ϳռ���ٶȶ�������ʱ��ͼ��');
end

