function [Cable] = CableDefinition()
% function [Cable] = CableDefinition()
% CableDefinition function contains definitions of all cables,
% JointRelation , Cable Names, etc.


%% Define cables
CT.Anchor = {'Hip_F','Thigh_U_F'};
CT.AnchorZone = {'Torso','Thigh'};
CT.F = 1;
CT.JointRelation = [1 0];
CT.Location = {'Torso','Thigh'};
CT.Name = {'1'};
CT.JointCenter = {'Hip'};
CT.Routing = {'Posterior'};
Cable.Cable1 = CT;
clear CT;


CT.Anchor = {'Hip_E','Thigh_U_E'};
CT.AnchorZone = {'Torso','Thigh'};
CT.F = 1;
CT.JointRelation = [1 0];
CT.Location = {'Torso','Thigh'};
CT.Name = {'2'};
CT.JointCenter = {'Hip'};
CT.Routing = {'Anterior'};
Cable.Cable2 = CT;
clear CT;




CT.Anchor = {'Thigh_L_F','Shank_F'};
CT.AnchorZone = {'Thigh','Shank'};
CT.F = 1;
CT.JointRelation = [0 1];
CT.Location = {'Thigh','Shank'};
CT.Name = {'3'};
CT.JointCenter = {'Knee'};
CT.Routing = {'Posterior'};
Cable.Cable3 = CT;
clear CT;



CT.Anchor = {'Thigh_L_E','Shank_E'};
CT.AnchorZone = {'Thigh','Shank'};
CT.F = 1;
CT.JointRelation = [0 1];
CT.Location = {'Thigh','Shank'};
CT.Name = {'4'};
CT.JointCenter = {'Knee'};
CT.Routing = {'Anterior'};
Cable.Cable4 = CT;
clear CT;

end
