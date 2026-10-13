%channel_stats.m 
%This code to make sure the channel matrix have the right distribution
addpath('config')
cfg = sim_config () ;  
[H, F, G] = generate_channel ( cfg ) ; 
fprintf ('MEAN OF H (~0): %4f\n', mean ( H(:)) ) ; 
fprintf ('VAR OF H (~1): %4f\n', var ( H(:)) ) ;
fprintf ('RANK OF H (~%d): %d\n',cfg.K ,rank ( H) ) ;



