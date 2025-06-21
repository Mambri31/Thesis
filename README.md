## Shared Functions

The following MATLAB functions are used across **all** models.  
For full details, see the in-file comments; below is a concise overview.

| File | Purpose |
|------|---------|
| **`matrix_MCG.m`** | Generates the inertia matrix **M**, Coriolis/centrifugal matrix **C**, and gravity vector **G**—the three terms required to formulate the inverse-dynamics equation. |
| **`inverse_dynamics.m`** | Solves the inverse-dynamics equation to compute the joint torques given **M**, **C**, **G**, joint positions, velocities, and accelerations. |
| **`impedance_controller.m`** | Calculates the torque commanded by the impedance controller. |
| **`dynamic_robot.m`** | Forward-dynamics equations for a 2-DOF robotic arm (modeling a leg moving only in the sagittal flexion-extension plane). Used to determine the user-applied torque. |
