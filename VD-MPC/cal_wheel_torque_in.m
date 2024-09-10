function torque_in = cal_wheel_torque_in(params, z, accel, deccel, yaw)
    if deccel > 0
        accel_cmd = -1;
    else
        accel_cmd = accel;
    
        t_generated = params.max_torque * accel_cmd ; 
        split_ratio = [0.5, 0.5, 0.0, 0.0];
        torque_in = split_ratio * t_generated; 


    
end
