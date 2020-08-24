function [] = Plot_OmegaNorm2(t,Norm2_Omega)
% 构形空间角速度二范数图像

plot(t(1:35000),Norm2_Omega(1,1:35000)','LineWidth',2); 
hold on;

grid on;%打开网格
title('构型空间角速度二范数—时间图像');
end

