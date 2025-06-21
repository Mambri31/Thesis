
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

### Provided Class — `mov_exo.m`
`mov_exo.m` is a MATLAB **class** supplied by my supervisor.  
It encapsulates the exoskeleton’s kinematics and dynamics:

* **Properties** – limb lengths, masses, inertias, and joint limits.  
* **Methods** – forward & inverse kinematics, dynamic equations, and utility helpers (e.g., Jacobians, energy calculations).  
* **Usage** – every model instantiates this class to obtain consistent plant parameters and to compute joint torques or trajectories on demand.

Feel free to inspect the in-file comments for detailed documentation of each property and method.

---

### Quick Tips
* Ensure that branch-specific READMEs match your directory structure.  
* If something breaks, double-check that the ranges and `.mat` filenames match exactly what the code expects.  
* Keep an eye on MATLAB’s maximum `.mat` file size during the simulation phase.
