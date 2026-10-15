%sinr of bob in theory 
function theory_sinr_bob = SINR_bob_theory ( cfg , H, W , k ) 
     H_k = H(k,:)'*H(k,:); 
     power_signal = real( trace(W(:,:,K)* H_k )) ; 
     interference = 0 ; 
     for j = 1:cfg.K+1 
          if j~= k 
               interference =interference+ real(trace(W(:,:,j)*H_k )) ; 
          end 
     end 
     theory_sinr_bob = power_signal/ (interference+cfg.sigma_C2) ; 
end 
%sinr of bob in simulation 
function sim_sinr_bob = SINR_bob_sim ( cfg, H , X , S, k )
     Y = H*X ; 
     y_k = Y(k,:);
     s_k = S(k, : ); 
     signal = abs(mean(y_k .* conj(s_k)))^2;
    % Total power minus signal
     total = mean(abs(y_k).^2);
     sim_sinr_bob = signal / (total - signal);
end





