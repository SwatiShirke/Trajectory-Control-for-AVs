function f_traction = long_traction_forces(params, z, tire_forces)
    f_vector = tire_forces;
    Fx_fl = f_vector(1);
    Fx_fr = f_vector(2);
    Fx_rl = f_vector(3);
    Fx_rr = f_vector(4);

    Fy_fl = f_vector(5);
    Fy_fr = f_vector(6);
    Fy_rl = f_vector(7);
    Fy_rr = f_vector(8);

    psi = z(6);   
    f_traction = (Fx_fr + Fx_fl) * cos(psi) + (Fy_fr + Fy_fl) * sin(psi) + (Fx_rl + Fx_rr);
     
    
end