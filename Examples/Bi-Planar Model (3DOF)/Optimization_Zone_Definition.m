function [X_ini,lb_X,ub_X] = Optimization_Zone_Definition()

%% SOLUTION MODULE
%% Bounds on the problem

lb_Hip_F1 = [0.10,0.10,0];
ub_Hip_F1 = [0.20,0.20,0.10];
lb_Hip_E1 = [0.10,0.10,0];
ub_Hip_E1 = [0.20,0.20,0.10];

lb_Hip_F2 = [0.10,0,0];
ub_Hip_F2 = [0.20,0.10,0.10];
lb_Hip_E2 = [0.1,0,0];
ub_Hip_E2 = [0.20,0.10,0.10];

lb_Thigh_U_F = [0.10,0,0.6];
ub_Thigh_U_F = [0.20,0,0.9];
lb_Thigh_U_E = [0.10,0,0.6];
ub_Thigh_U_E = [0.20,0,0.9];

lb_Thigh_L_F = [0.10,0,0.65];
ub_Thigh_L_F = [0.20,0,0.9];
lb_Thigh_L_E = [0.10,0,0.7];
ub_Thigh_L_E = [0.30,0,1.5];

lb_Shank_F = [0.08,0,0.5];
ub_Shank_F = [0.12,0,0.8];
lb_Shank_E = [0.08,0,0.5];
ub_Shank_E = [0.12,0,0.8];


lb_X = [lb_Hip_F1,lb_Hip_E1,lb_Hip_F2,lb_Hip_E2,lb_Thigh_U_F,lb_Thigh_U_E,lb_Thigh_L_F,lb_Thigh_L_E,lb_Shank_F,lb_Shank_E]';
ub_X = [ub_Hip_F1,ub_Hip_E1,ub_Hip_F2,ub_Hip_E2,ub_Thigh_U_F,ub_Thigh_U_E,ub_Thigh_L_F,ub_Thigh_L_E,ub_Shank_F,ub_Shank_E]';



%% Fmincon solution guess
X_ini = [0.0200, 0.1500, 0,...
    0.0200, 0.1500, 0,...
    0.2000, 0, 0,...
    0.2000, 0,0.0000,...
    0.1465, 0,0.6000,...
    0.1000, 0,0.6000,...
    0.1500, 0,0.7000,...
    0.2000, 0,0.7187,...
    0.1000, 0,0.7739,...
    0.1000, 0,0.8000]';