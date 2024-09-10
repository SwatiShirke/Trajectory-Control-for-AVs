function f_vector = tire_forces(params, z)
    %% vehicle forces <- tire forces <- slip <- angular wheel and 
    %% linear axel velocity <- T_inout & T_load <- accel, deccel   

    % front and rear tire's longitudinal forces
    % stiffness coefficient params.Cx
    % calulate slip for 4 wheels
     Slips = caculate_slip(params, z);
     S_fl = Slips(1);
     S_fr = Slips(2);
     S_rl = Slips(3);
     S_rr = Slips(4);
    
    Fx_fl = params.C_x * S_fl;
    Fx_fr = params.C_x * S_fr;
    Fx_rl = params.C_x * S_rl;
    Fx_rr = params.C_x * S_rr; 
    
    %%front and rear tire's lateral forces
    alpha = calculate_slip_angles(params,z );
    alpha_1 =  alpha(1);
    alpha_2 = alpha(2);
    alpha_3 = alpha(3);
    alpha_4 = alpha(4);
    
    Fy_fl = params.C_y * alpha_1;
    Fy_fr = params.C_y * alpha_2;    
    Fy_rl = params.C_y * alpha_3;
    Fy_rr = params.C_y * alpha_4; 
    
    f_vector = [Fx_fl; Fx_fr;Fx_rl; Fx_rr;  Fy_fl; Fy_fr;Fy_rl; Fy_rr ];
    
    



end