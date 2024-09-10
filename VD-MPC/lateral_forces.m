function [fy_f, fy_r] = lateral_forces(params, z, tire_forces)
    f_vector = tire_forces;
    Fx_fr = f_vector(1);
    Fx_fl = f_vector(2);
    Fx_rr = f_vector(3);
    Fx_rl = f_vector(4);

    Fy_fl = f_vector(5);
    Fy_fr = f_vector(6);
    Fy_rl = f_vector(7);
    Fy_rr = f_vector(8);
    psi = z(6);
       
    fy_f = (Fx_fr + Fx_fl) * sin(psi) + (Fy_fr + Fy_fl) * cos(psi);
          
    fy_r = (Fy_rl + Fy_rr);
end