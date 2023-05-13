function Hinge = HingeLocations_5Cables(M_anthro,X)
%% Update Cable Anchors [Also can be used for warm stating of optimization

if nargin == 1

    %% Define Cable Anchors
    %% Healthy side (back seen from sagittal)
    Hinge.Hip_F1 = struct('c_lh',-0.05,'a_lh',-0.2,'t_lh',-pi,'fa_lh',-0.2,'ft_lh',0);
    Hinge.Hip_E1 = struct('c_lh',-0.05,'a_lh',-0.2,'t_lh',0,'fa_lh',-0.2,'ft_lh',0);

    %% Impaired Side (front seen from sagittal)

    Hinge.Hip_F2 = struct('c_lh',-0.05,'a_lh',-0.25,'t_lh',-pi,'fa_lh',0.05,'ft_lh',0);
    Hinge.Hip_E2 = struct('c_lh',-0.05,'a_lh',-0.22,'t_lh',0,'fa_lh',0.05,'ft_lh',0);


    %% Other Cuffs
    Hinge.Shank_F = struct('c_lh',M_anthro.ls*0.75,'a_lh',-0.1,'t_lh',-pi,'fa_lh',0,'ft_lh',0);
    Hinge.Shank_E = struct('c_lh',M_anthro.ls*0.75,'a_lh',-0.1,'t_lh',0,'fa_lh',0,'ft_lh',0);

    Hinge.Thigh_L_F = struct('c_lh',M_anthro.lt*0.75,'a_lh',-0.15,'t_lh',-pi,'fa_lh',0,'ft_lh',0);
    Hinge.Thigh_L_E = struct('c_lh',M_anthro.lt*0.75,'a_lh',-0.2,'t_lh',pi/3,'fa_lh',0,'ft_lh',0);

    Hinge.Thigh_U_F = struct('c_lh',M_anthro.lt*0.65,'a_lh',-0.17,'t_lh',-pi,'fa_lh',0,'ft_lh',0);
    Hinge.Thigh_U_E = struct('c_lh',M_anthro.lt*0.65,'a_lh',-0.17,'t_lh',pi/6,'fa_lh',0,'ft_lh',0);
end

if nargin == 2
    % Hip c_lh are defined in direct value instead of relation with
    % M_anthro

    %     a_lh is referred as X-axis, fa_lh as Y-axis, and c_lh as Z-axis;
    % Certains co-dordinates such as o values of fa_lh in the sagittal
    % plane bound hinges can be excluded from the variable list to reduce
    % number of variables




    % Hinge.Hip_F1 = struct('c_lh',-X(3),'a_lh',-X(1),'t_lh',-pi,'fa_lh',-X(2),'ft_lh',0);
    Hinge.Hip_E1 = struct('c_lh',-X(6),'a_lh',-X(4),'t_lh',0,'fa_lh',-X(5),'ft_lh',0);

    Hinge.Hip_F2 = struct('c_lh',-X(9),'a_lh',-X(7),'t_lh',-pi,'fa_lh',X(8),'ft_lh',0);
    Hinge.Hip_E2 = struct('c_lh',-X(12),'a_lh',-X(10),'t_lh',0,'fa_lh',X(11),'ft_lh',0);

    Hinge.Thigh_U_F = struct('c_lh',M_anthro.lt*X(15),'a_lh',-X(13),'t_lh',-pi,'fa_lh',X(14),'ft_lh',0);
    Hinge.Thigh_U_E = struct('c_lh',M_anthro.lt*X(18),'a_lh',-X(16),'t_lh',0,'fa_lh',X(17),'ft_lh',0);

    %% Other Cuffs
    Hinge.Thigh_L_F = struct('c_lh',M_anthro.lt*X(21),'a_lh',-X(19),'t_lh',-pi,'fa_lh',X(20),'ft_lh',0);
    Hinge.Thigh_L_E = struct('c_lh',M_anthro.lt*X(24),'a_lh',-X(22),'t_lh',0,'fa_lh',X(23),'ft_lh',0);

    Hinge.Shank_F = struct('c_lh',M_anthro.ls*X(27),'a_lh',-X(25),'t_lh',-pi,'fa_lh',X(26),'ft_lh',0);
    Hinge.Shank_E = struct('c_lh',M_anthro.ls*X(30),'a_lh',-X(28),'t_lh',0,'fa_lh',X(29),'ft_lh',0);
end

end
