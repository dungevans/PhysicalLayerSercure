%sinr of bob in simulation 

function sim_sinr_bob = SINR_bob_sim ( H , X , S, k )
     Y = H*X ; 
     y_k = Y(k,:);
     s_k = S(k, : ); 
     signal = abs(mean(y_k .* conj(s_k)))^2;
    % Total power minus signal
     total = mean(abs(y_k).^2);
     sim_sinr_bob = signal / (total - signal);
end
