function params = system_parameters()
    params.m = 2000; %kg
    params.rho = 1.225; %kg /m3
    params.C_d = 0.4; %
    params.Af = 1.6 +  0.00056 * (params.m - 765); %frontal area of vehicle 
    params.V_wind = 10 ;  %m/s
    params.a = 2.475;         %front_axel - CG
    params.b = 2.4;         % rear axel - CG
    params.l =  params.a + params.b;  %%m length of wheel base
    params.tf =  1.58; % track idth of wheel base 
    params.tr = 1.58; % track width of rear wheel base
    params.w = 1.58; % vehicle width
    params.Izz_v = params.m * (params.l^2 + params.w^2) / 12;  %vehicle intertia 
    params.max_torque = 450; %Nm
    params.max_power =  225* 10^3;
    params.C_x = 200,000;  %N/rad
    params.C_y = 150,000;   %lateral coefficient of stiffness
    params.R_f = 0.334; % 
    params.R_r = 0.334; %
    params.tire_m_f = 12; %mass in Kg
    params.tire_m_r = 12; %mass in Kg
    params.Iyy_w_f = 0.5 * params.tire_m_f * params.R_f ;
    params.Iyy_w_r = 0.5 * params.tire_m_r * params.R_r ;
end
