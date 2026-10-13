%signal received by radar 
function Z = receive_radar ( cfg, X , G ) 
    V = sqrt ( cfg.sigma_S2/2) * ( randn ( cfg.Nr , cfg.T)+ 1j * randn ( cfg.Nr, cfg.T)) ; 
    Z = G*X + V ; 
end 
