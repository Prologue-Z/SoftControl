function [] = Plot_EndSpeed(Velocity_Position_Absolute)
% ĩ���ٶ�ͼ��

plot(t,Velocity_Position_Absolute(1,:),'LineWidth',2); 
hold on;

grid on;%������
title('�ٶȡ�ʱ��ͼ��');
end

