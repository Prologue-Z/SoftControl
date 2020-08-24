function [] = Plot_EndSpeed(t,Velocity_Position_Absolute)
% 末端速度图像

plot(t(1:35000),Velocity_Position_Absolute(1,1:35000),'LineWidth',2); 
hold on;

grid on;%打开网格
title('速度—时间图像');
end

