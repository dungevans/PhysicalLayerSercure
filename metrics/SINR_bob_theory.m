%sinr of bob in theory 
function theory_sinr_bob = SINR_bob_theory ( cfg , H, W , k ) 
     H_k = H(k,:)' * H(k,:); 
     power_signal = real( trace(W(:,:,k) * H_k) ) ; 
     interference = 0 ; 
     for j = 1:cfg.K 
          if j ~= k 
               interference = interference + real(trace(W(:,:,j) * H_k))  ; 
          end 
     end 
     theory_sinr_bob = power_signal / (interference + ( cfg.sigma_C2)^2  + real ( trace ( W(: , : ,cfg.K + 1 )))  ) ; 
end 






