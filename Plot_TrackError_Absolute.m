function [] = Plot_TrackError_Absolute(t,AbsoluteError_Position)
% �켣�����������

plot(t,AbsoluteError_Position(1,:),'r','LineWidth',2);
hold on 
grid on; 
xlabel('t/s');
ylabel('Y/m');
% axis([0 5 0 0.006]);
title('�켣���������')
set(gca,'Fontsize',16)
end

