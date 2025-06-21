## Simulation Branch

This branch sweeps through every range combination in the **`simulation`** model and stores the results in a single `.mat` file.

| Aspect | Details |
|--------|---------|
| **Parallel execution** | Leverages the MATLAB **Parallel Computing Toolbox** to run simulations concurrently, reducing total run-time. |
| **MAT-file limit** | The output file grows fast—≈ 2.5 GB for ~10 000 combinations—and can approach MATLAB’s maximum MAT-file size (normally 2–4 GB depending on version/format). Keep an eye on this limit. |
| **Variable-step solver** | **Do not change the variable-step setting.** It keeps time vectors minimal, avoiding unnecessary data bloat. |
| **Post-processing** | The *signal-analysis* branch will take care of resampling, so a fixed time step is unnecessary here. |
