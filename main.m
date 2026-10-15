clc; clear; close all;

addpath(fullfile(pwd, 'config'), ...
        fullfile(pwd, 'channel'), ...
        fullfile(pwd, 'signal'), ...
        fullfile(pwd, 'receiver'), ...
        fullfile(pwd, 'metrics'));

cfg = sim_config();
rng(cfg.rng_seed);

[H, F, G] = generate_channel(cfg);
S = generate_symbols(cfg);

% simple beamformer choice for a working simulation baseline
W = zeros(cfg.Nt, cfg.Nt, cfg.K);
for k = 1:cfg.K
    W(:, :, k) = eye(cfg.Nt);
end

B = generate_atificial_noise(cfg, eye(cfg.Nt));
X = transmit_signal(cfg, W, S, B);

Y_bob = receive_bob(cfg, X, H);
Y_eve = receive_eve(cfg, X, F);

sim_sinr = zeros(cfg.K, 1);
theory_sinr = zeros(cfg.K, 1);
for k = 1:cfg.K
    sim_sinr(k) = SINR_bob_sim(H, X, S, k);
    theory_sinr(k) = SINR_bob_theory(cfg, H, W, k);
end

fprintf('Channel H: mean = %.4f, variance = %.4f\n', mean(abs(H(:))), var(abs(H(:))));
fprintf('Bob SINR (simulation): mean = %.4f, min = %.4f, max = %.4f\n', ...
    mean(sim_sinr), min(sim_sinr), max(sim_sinr));
fprintf('Bob SINR (theory): mean = %.4f, min = %.4f, max = %.4f\n', ...
    mean(theory_sinr), min(theory_sinr), max(theory_sinr));

fprintf('Estimated per-user SINR (dB):\n');
for k = 1:cfg.K
    fprintf('  User %d: sim = %.3f dB, theory = %.3f dB\n', ...
        k, 10*log10(sim_sinr(k)), 10*log10(theory_sinr(k)));
end
