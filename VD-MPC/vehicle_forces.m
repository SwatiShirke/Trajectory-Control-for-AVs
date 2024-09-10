function [Fx_sum, Fy_f, Fy_r] = vehicle_forces(params, z, t_forces)
     
    Fx_sum = longitudinal_forces(params, z, t_forces);
    [Fy_f, Fy_r] = lateral_forces(params, z, t_forces);

end