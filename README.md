
# Thesis Workflow  
*Riccardo Mambrini*

This repository reproduces every step of my thesis work.  
> **Important:** each branch has its own README — read it first to avoid mistakes.

## Workflow Overview

| Step        | Branch | What to do |
|-------------|--------|------------|
| **1 · simulation**      | `simulation` | 1. Set the operating ranges (defaults are my originals). Run the simulation. Save the resulting `.mat` file and the chosen ranges. This is the most computational-heavy phase. Ranges that are too wide can create `.mat` files that exceed MATLAB’s size limits. 
| **2 · signal analysis**       | `signal-analysis` | 1. Import the `.mat` file from Step 1. Adjust the ranges if needed. Run `main_signal_analysis.m` to generate `Kt.mat` , `Bt.mat` and `K_B.mat`. Converts raw simulation data into the gain files required by the final model. 
| **3 · main model**       | `main-model` | 1. Make sure all `*_gain.mat` files are in the working directory. Run the model to view the results. Tweak **Direct User Gain** to test how the system responds under different conditions.

### Quick Tips
* Always ensure branch-specific READMEs match your directory structure.  
* If something breaks, double-check that the ranges and `.mat` filenames match exactly what the code expects.

