function [] = Plot_Omega(t,Omega,Norm2_Omega)
% ���οռ���ٶ�ͼ��

% ���ٶȾ���Ĺ���ת�ã���ά�������άԪ���޷�ֱ����ȡ������
Omega_Per = permute(Omega,[3,2,1]);
% ���ٶ�
plot(t,Omega_Per(:,1,1),'LineWidth',2); 
hold on;
plot(t,Omega_Per(:,2,1),'LineWidth',2); 
hold on;
plot(t,Omega_Per(:,1,4),'LineWidth',2); 
hold on;
plot(t,Omega_Per(:,2,4),'LineWidth',2); 
hold on;
plot(t,Norm2_Omega(1,:)','LineWidth',2); 
hold on;

grid on;%������
title('���Ϳռ���ٶȡ�ʱ��ͼ��');
end

