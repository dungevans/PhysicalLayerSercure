%signal received by bob 
function Y = receive_bob (cfg, X , H) 
    V = (randn (cfg.K , cfg.T ) + 1j*randn ( cfg.K , cfg.T))*sqrt ( cfg.sigma_C2/2) ; 
    Y = H*X + V ; 
end 

