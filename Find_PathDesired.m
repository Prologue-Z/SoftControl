function [Path_FindDesired] = Find_PathDesired(Path_actual_iadd1,Path_desired,t)
%�ҵ�����Path_actual(:,i+1)�����Ϊr��λ��Ŀ��·��ֱ�ߵĵ�

% Ŀ��ֱ�ߵķ�������
Vector_LineDesired = Path_desired(:,1) - Path_desired(:,length(t));
r = norm(Vector_LineDesired,2)/(length(t)-1);

syms x y z;
% ����1ΪPath_actual(:,i+1)��ΪԲ�İ뾶Ϊr����
eqn1 = (x - Path_actual_iadd1(1))^2 + (y - Path_actual_iadd1(2))^2 + (z - Path_actual_iadd1(3))^2 == r^2;
% ����2��3�趨ֱ�߹켣����
eqn2 = (x - 0.3814)/0.1031 == (y + 0.3966)/0.7801;
eqn3 = (y + 0.3966)/0.7801 == -(z -0.8884)/0.0810;
[solx,soly,solz] = solve(eqn1,eqn2,eqn3,[x,y,z]);
% �ж������Ƿ��н�
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

