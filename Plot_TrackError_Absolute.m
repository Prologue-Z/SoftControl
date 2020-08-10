function [] = Plot_TrackError_Absolute(t,AbsoluteError_Position)
% ¹ì¼£¸ú¾ø¶Ô×ÙÎó²î

plot(t,AbsoluteError_Position(1,:),'r','LineWidth',2);
hold on 
grid on; 
xlabel('t/s');
ylabel('Y/m');
% axis([0 5 0 0.006]);
title('¹ì¼£¸ú×Ù×ÜÎó²î')
set(gca,'Fontsize',16)
end

