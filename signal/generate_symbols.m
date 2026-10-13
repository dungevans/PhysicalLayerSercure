%generate_symbols.m

function S = generate_symbols(cfg) 
    S = (randn(cfg.K, cfg.T) + 1j *(randn ( cfg.K , cfg.T)))/ sqrt(2) ; 
end 
