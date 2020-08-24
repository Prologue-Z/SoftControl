function [Path_FindDesired] = Find_PathDesired(Path_actual_iadd1,Path_desired,t)
%找到距离Path_actual(:,i+1)点距离为r的位于目标路径直线的点

% 目标直线的方向向量
Vector_LineDesired = Path_desired(:,1) - Path_desired(:,length(t));
r = norm(Vector_LineDesired,2)/(length(t)-1);

syms x y z;
% 方程1为Path_actual(:,i+1)点为圆心半径为r的球
eqn1 = (x - Path_actual_iadd1(1))^2 + (y - Path_actual_iadd1(2))^2 + (z - Path_actual_iadd1(3))^2 == r^2;
% 方程2和3设定直线轨迹方程
eqn2 = (x - 0.3814)/0.1031 == (y + 0.3966)/0.7801;
eqn3 = (y + 0.3966)/0.7801 == -(z -0.8884)/0.0810;
[solx,soly,solz] = solve(eqn1,eqn2,eqn3,[x,y,z]);
% 判定方程是否有解
if isreal(solx(1)) == 0
    eqn4 = [x - Path_actual_iadd1(1),y - Path_actual_iadd1(2),z - Path_actual_iadd1(3)] * Vector_LineDesired == 0;
    [solx1,soly1,solz1] = solve(eqn4,eqn2,eqn3,[x,y,z]);
    Path_FindDesired(1) = solx1;
    Path_FindDesired(2) = soly1;
    Path_FindDesired(3) = solz1;
else
    Distance_ToEnd = 100 * ones(1,length(solx));
    for j = 1:length(solx)
          Distance_ToEnd(1,j) = sqrt((solx(j) - Path_desired(1,length(t)))^2 + (soly(j) - Path_desired(2,length(t)))^2 + (solz(j) - Path_desired(3,length(t)))^2);
    end
    [~,index] = min(Distance_ToEnd);
    Path_FindDesired(1) = solx(index);
    Path_FindDesired(2) = soly(index);
    Path_FindDesired(3) = solz(index);
end

