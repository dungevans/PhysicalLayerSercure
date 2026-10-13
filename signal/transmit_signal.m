%transmit_signal.m 
function X = transmit_signal(cfg,W,S,B)
    % W = Nt*NtBeamforming * ( K+1) : covariance matrix 
    % S = K * T symbols 
    % B : Nt x  T artificial noise 
    % x = w*s + b 
    X = zeros ( cfg.Nt , cfg.T) ;
    for k = 1 : cfg.K 
        [V,D] = eig ( W(:, :, k ))  ; 
        [~, idx ]= max (diag(D) ) ;
        w_k = sqrt( D(idx, idx )) * V(:,idx) ; 
        X = X + w_k*S(k,: ) ; 
    end 
    X = X + B ;  
end