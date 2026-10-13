secure_isac_sim/
│
├── config/                  # All parameters in one place
│   └── sim_config.m
|
├── channel/                 # Channel generation & management
│   ├── generate_channels.m
│   └── channel_stats.m
│
├── signal/                  # Signal & waveform generation
│   ├── generate_symbols.m
│   ├── generate_artificial_noise.m
│   └── transmit_signal.m
│
├── receiver/                # Receiver-side processing
│   ├── receive_bob.m
│   ├── receive_eve.m
│   └── receive_radar.m
│
├── metrics/                 # Performance metrics
│   ├── compute_sinr_bob.m
│   ├── compute_sinr_eve.m
│   ├── compute_crb.m
│   └── compute_secrecy_rate.m
│
├── beamforming/             # Beamforming design (the optimization part)
│   ├── solve_sdr.m
│   ├── extract_beamformers.m
│   └── benchmark_zf.m
│
├── experiments/             # Reproduce paper figures
│   ├── exp_fig2a.m
│   ├── exp_fig2b.m
│   └── exp_fig3.m
│
└── main.m                   # Entry point