function [] = Plot_EndSpeed(t,Velocity_Position_Absolute)
% ĩ���ٶ�ͼ��

plot(t(1:35000),Velocity_Position_Absolute(1,1:35000),'LineWidth',2); 
hold on;

grid on;%������
title('�ٶȡ�ʱ��ͼ��');
end

