%sinr of bob in simulation 

function sim_sinr_eve = SINR_eve_sim ( F , X , S, k )
     Y = F*X ; 
     y_k = Y(k,:);
     s_k = S(k, : ); 
     signal = abs(mean(y_k .* conj(s_k)))^2;
    % Total power minus signal
     total = mean(abs(y_k).^2);
     sim_sinr_eve = signal / (total - signal);
end
