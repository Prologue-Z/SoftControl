function [] = Plot_EndSpeed(Velocity_Position_Absolute)
% 末端速度图像

plot(t,Velocity_Position_Absolute(1,:),'LineWidth',2); 
hold on;

grid on;%打开网格
title('速度—时间图像');
end

