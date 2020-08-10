function [] = Plot_Omega(t,Omega,Norm2_Omega)
% 构形空间角速度图像

% 角速度矩阵的广义转置（三维数组第三维元素无法直接提取向量）
Omega_Per = permute(Omega,[3,2,1]);
% 角速度
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

grid on;%打开网格
title('构型空间角速度—时间图像');
end

