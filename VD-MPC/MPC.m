% function [accel, deccel, yaw] = MPC()
% 
% 
% 
% end
nx = 10;
ny = 3;
nu = 3;
nlobj = nlmpc(nx,ny,nu);

Ts = 0.1;
nlobj.Ts = Ts;
nlobj.PredictionHorizon = 10;
nlobj.ControlHorizon = 5;
nlobj.Model.StateFcn = "vehicle_dynamics";
nlobj.Model.IsContinuousTime = false;

%nlobj.Model.StateFcn = @(x,u) vehicle_dynamics(x,u);
nlobj.Model.OutputFcn = @(x,u) [x(1); x(4); x(5)];
nlobj.Dimensions

x0 = zeros(10,1);
u0 = [0.5, 0, 0.5];
validateFcns(nlobj, x0, u0);

% % yaw = 0.5;
% % accel = 0.5;
% % deccel = 0.0;
% % z = [0,0,0, 0,0,0, 0,0,0,0];
% % %s = add(accel, deccel)
% % dz = vehicle_dynamics(z, accel, deccel, yaw);

