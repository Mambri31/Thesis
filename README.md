# Thesis Workflow  
*Riccardo Mambrini*

This repository reproduces every step of my thesis work.  
> **Important:** each branch has its own README — read it first to avoid mistakes.

## Workflow Overview

| Step | Branch | What to do |
|------|--------|-----------|
| **1 · simulation** | `simulation` | 1. Set the operating ranges (defaults are my originals). 2. Run the simulation. 3. Save the resulting `.mat` file and the chosen ranges.<br><br>▶ *Note:* This is the most computational-heavy phase. Ranges that are too wide can create `.mat` files that exceed MATLAB’s size limits. |
| **2 · signal analysis** | `signal-analysis` | 1. Import the `.mat` file from Step&nbsp;1. 2. Adjust the ranges if needed. 3. Run `main_signal_analysis.m` to generate `Kt.mat`, `Bt.mat`, and `K_B.mat`.<br><br>▶ Converts raw simulation data into the gain files required by the final model. |
| **3 · main model** | `main-model` | 1. Make sure all generated files are in the working directory. 2. Run the model to view the results. 3. Tweak **Direct User Gain** to see how the system responds under different conditions. |
| **4 · shared functions** | `functions` | Shared utilities: `matrix_MCG.m`, `inverse_dynamics.m`, `impedance_controller.m`, `dynamic_robot.m`.<br><br>Add this folder to your MATLAB path; nothing needs to be run directly. |

---

### Provided Class — `mov_exo.m`
`mov_exo.m` is a MATLAB **class** supplied by my supervisor.

* **Properties** – limb lengths, masses, inertias, joint limits.  
* **Methods** – forward/inverse kinematics, dynamic equations, Jacobians, energy calculations.  
* **Usage** – all models instantiate this class for consistent plant parameters and on-the-fly torque/trajectory computations.

---

### Quick Tips
* Always verify that each branch-specific README matches your local folder structure.  
* If something breaks, confirm the ranges and `.mat` filenames are exactly what the code expects.  
* During the simulation phase, monitor MATLAB’s maximum `.mat` file size to avoid overruns.


