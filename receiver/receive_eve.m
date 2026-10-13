%signal received by eve 
function R = receive_eve ( cfg, X , F  )
    V = sqrt ( cfg.sigma_I2/2 ) * ( randn ( cfg.J, cfg.T )+ 1j * randn ( cfg.J , cfg.T)) ; 
    R = F*X +  V ; 
end 