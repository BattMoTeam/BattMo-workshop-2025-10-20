using BattMo, GLMakie

cell_parameters = load_cell_parameters(; from_file_path = "default_sets/cell_parameters/Chen2020.json")
cycling_protocol = load_cycling_protocol(; from_file_path = "default_sets/cycling_protocols/wltp_protocol.json")
simulation_settings = load_simulation_settings(; from_file_path = "default_sets/simulation_settings/P2D.json")

model_setup = LithiumIonBattery()

sim = Simulation(model_setup, cell_parameters, cycling_protocol; simulation_settings);

output = solve(sim);

plot_dashboard(output)
