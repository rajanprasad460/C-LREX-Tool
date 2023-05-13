function [Hinge] = Hinge_2DOF_Model(M_anthro)
% function [Hinge] = HingeLocation_2DOF(M_anthro)
% HingeLocation_2DOF function contains definitions of all cables hinges,
% starting and ending anchors, and cuff definitions.
% Currently hinge locations are defined in relation to shank and thigh
% length and thus anthropometric data M_anthro is required.

%% Define Cable Anchors [Default , General CUff ]

Hinge.Hip_F = struct('c_lh',-0.05,'a_lh',-0.22,'t_lh',-pi,'fa_lh',0,'ft_lh',0);
Hinge.Hip_E = struct('c_lh',-0.05,'a_lh',-0.2,'t_lh',0,'fa_lh',0,'ft_lh',0);


%% Other Cuffs
Hinge.Shank_F = struct('c_lh',M_anthro.ls*0.75,'a_lh',-0.1,'t_lh',-pi,'fa_lh',0,'ft_lh',0);
Hinge.Shank_E = struct('c_lh',M_anthro.ls*0.75,'a_lh',-0.1,'t_lh',0,'fa_lh',0,'ft_lh',0);

Hinge.Thigh_L_F = struct('c_lh',M_anthro.lt*0.75,'a_lh',-0.15,'t_lh',-pi,'fa_lh',0,'ft_lh',0);
Hinge.Thigh_L_E = struct('c_lh',M_anthro.lt*0.75,'a_lh',-0.20,'t_lh',pi/3,'fa_lh',0,'ft_lh',0);

Hinge.Thigh_U_F = struct('c_lh',M_anthro.lt*0.65,'a_lh',-0.15,'t_lh',-pi,'fa_lh',0,'ft_lh',0);
Hinge.Thigh_U_E = struct('c_lh',M_anthro.lt*0.65,'a_lh',-0.15,'t_lh',pi/6,'fa_lh',0,'ft_lh',0);

end