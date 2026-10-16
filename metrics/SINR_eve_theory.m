% function calculate SINR of eve in therory 
function sinr = SINR_eve_theory  ( cfg, k , F, W )
    Fk = F(k , : )' * F (k, : ); 
    Wk = W(k, : )' * W(k ,: ) ;
    power_signal = real ( trace ( Fk * Wk ) ) ;
    interference = 0 ; 
    for j  = 1 : cfg. K
        interference = interference + real ( trace ( Fk*W ( : , : , j ) ))  ;  
    end 

    sinr = power_signal/( interference + cfg.sigma_I2^2  + real (trace ( Fk * W ( : , : , cfg.K + 1 ))))     ;

end 

