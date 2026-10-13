%generate_channel.m
% generate mo hinh kenh truyen : bob, eve, radar ( H,F,G)
function [H, F, G] = generate_channel(cfg)
    H = (randn ( cfg.K , cfg.Nt)   + 1j*randn ( cfg.K , cfg.Nt))/ sqrt ( 2)  ; 
    F = (randn ( cfg.J , cfg.Nt)   + 1j*randn ( cfg.J , cfg.Nt))/ sqrt ( 2)  ; 
    G = (randn ( cfg.Nr , cfg.Nt)   + 1j*randn ( cfg.Nr , cfg.Nt))/ sqrt ( 2)  ;
end 
 

