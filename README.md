## Signal-Analysis Branch

This folder contains every function required to analyse the model outputs.

### What the scripts do
1. **Extract gains**  
   * Computes both constant gains and time-varying gains.
2. **Evaluate performance** using:  
   * Tolerance-within-range method  
   * Root Mean Square (RMS)  
   * Cross-correlation  
   * Mean Absolute Error (MAE)
3. **Aggregate results**  
   * The main script averages the outputs and saves three files:  
     * `Kt.mat` – stiffness gains  
     * `Bt.mat` – damping gains  
     * `K_B.mat` – combined stiffness-damping table

> For full implementation details, see the inline comments in each `.m` file.
