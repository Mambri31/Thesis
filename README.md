## Simulation Models Branch

This branch hosts the complete set of simulation models.

### Contents
| Folder/File | Description |
|-------------|-------------|
| **`constant_gain_model.slx`** | Version with **constant gains**. |
| **`variable_gain_model.slx`** | Version with **time-varying gains**. |
| **`main.m`** | Loads all required parameters and builds the time-series inputs for either model. |

### How it works
1. **Parameter loading** – `main.m` reads every gain and signal definition into the workspace.  
2. **Time-series generation** – The script converts those parameters into the `timeseries` objects expected by Simulink.  
3. **Disturbance modeling** – Both models currently include only the **direct-user torque** as a disturbance. The scenarios explore different gain sets, intermittent activation, and user-delay cases.  
4. **Run simulation** – Choose the desired model (`constant` or `variable`), hit *Run*, and inspect the results.

### Extending the setup
Feel free to add additional disturbances—or any other ideas—by modifying either the Simulink blocks or `main.m`. The framework is designed to be easily extensible.
