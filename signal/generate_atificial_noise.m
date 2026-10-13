%generate_atificial_noise 
function B = generate_atificial_noise ( cfg, W_AN  ) 
     L = chol ( W_AN, 'lower'); 
     B = L*( randn ( cfg.Nt, cfg.T ) + 1j*randn ( cfg.Nt, cfg.T))/ sqrt(2) ; 
end
