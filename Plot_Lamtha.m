function [] = Plot_Lamtha(t,lamtha)
% lamtha-时间图像

plot(t,lamtha,'LineWidth',2); 
hold on;

grid on;%打开网格
title('lamtha—时间图像');
end

