function slip_angles =  calculate_slip_angles(params,z )
    Vx = z(1);
    Vy = z(2);
    r =  z(3);
    psi = z(6);
    alpha_fl = psi - tinv( (Vy + params.a * r ), ( Vx - (r * params.tf /2)) );
    alpha_fr = psi - tinv( (Vy + params.a * r ), ( Vx + (r * params.tf /2)) );
    alpha_rl = tinv( (Vy - params.b * r ), ( Vx - (r * params.tr /2)) );
    alpha_rr = tinv( (Vy - params.b * r ), ( Vx + (r * params.tf /2)) );
    
    slip_angles = [alpha_fl , alpha_fr, alpha_rl, alpha_rr ];

end