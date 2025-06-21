## Simulation Branch

This branch runs the **`simulation`** model across every combination of the specified ranges and saves all results to a single `.mat` file.

### Why and How
| Aspect | Details |
|--------|---------|
| **Parallel execution** | Uses the MATLAB **Parallel Computing Toolbox** to launch simulations concurrently, significantly shortening run-time. |
| **Output size** | The `.mat` file grows quickly—about **2.5 GB** for ~10 000 combinations. Monitor your disk space. |
| **Variable-step solver** | **Do not change the variable-step setting** in the model. It keeps the time vectors as short as possible, preventing unnecessary bloat. |
| **Post-processing** | The subsequent *Signal Analysis* branch will handle resampling, so you don’t need to force a fixed time step here. |
