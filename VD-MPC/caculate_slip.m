function slips = caculate_slip(params, z)
    %wheel longitudinal velocity and angular rate
    Vx = z(1);
    r = z(3);
    % calculate axel linear and agular velocities of a tire 
       w_fl = z(7);
       w_fr = z(8);
       w_rl = z(9);
       w_rr = z(10);

    %%calculate linear velocities of each wheel 
       V_fl = Vx - (r * params.tf /2); 
       V_fr = Vx + (r * params.tf /2);
       V_rl = Vx - (r * params.tr /2);
       V_rr = Vx + (r * params.tr /2);

    % if deccel > 0
    %     S_fl = params.R_f * w_fl - V_fl / (V_fl); 
    %     S_fr = params.R_f * w_fr - V_fr / (V_fr);
    %     S_rl = params.R_r * w_rl - V_rl / (V_rl); 
    %     S_rr = params.R_r * w_rr - V_rr / (V_rr);
    % else
    %end
    try 
        S_fl = params.R_f * w_fl - V_fl / (params.R_f * w_fl); if (w_fl ==0), S_fl = 0; end 
        S_fr = params.R_f * w_fr - V_fr / (params.R_f * w_fr); if (w_fr ==0), S_fr = 0; end
        S_rl = params.R_r * w_rl - V_rl / (params.R_r * w_rl); if (w_rl ==0), S_rl = 0; end
        S_rr = params.R_r * w_rr - V_rr / (params.R_r * w_rr); if (w_rr ==0), S_rr = 0; end
    catch

    end


   
    
    slips = [S_fl, S_fr, S_rl, S_rr];


end