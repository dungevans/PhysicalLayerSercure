% sim_config.m
function cfg = sim_config()
    % ===== System dimensions =====
    cfg.Nt = 30;        % transmit antennas at BS
    cfg.Nr = 20;        % radar receive antennas
    cfg.K  = 6;         % number of legitimate users (Bob)
    cfg.J  = 6;         % number of eavesdroppers (Eve)
    cfg.T  = 800;       % block length (symbols)
    
    % ===== Noise powers =====
    cfg.sigma_C2 = 1;   % Bob noise variance
    cfg.sigma_I2 = 1;   % Eve noise variance
    cfg.sigma_S2 = 1;   % Sensing noise variance
    
    % ===== Performance targets =====
    cfg.gamma_dB = 10;      % Bob SINR target (dB)
    cfg.rho_dB   = -10;     % Eve SINR target (dB)
    cfg.beta_dB  = -10;     % CRB target (dB)
    
    % ===== Derived =====
    cfg.gamma = 10^(cfg.gamma_dB/10);
    cfg.rho   = 10^(cfg.rho_dB/10);
    cfg.beta  = 10^(cfg.beta_dB/10);
    
    % ===== Optimization =====
    cfg.alpha = 0.99;   % SDR weight parameter
    
    % ===== Simulation =====
    cfg.num_realizations = 100;
    cfg.rng_seed = 42;
end