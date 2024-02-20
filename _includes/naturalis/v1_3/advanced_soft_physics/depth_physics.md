Depth physics is the change of soft physics parameter values based on the depth of soft joints relative to the center of the mesh. A parameter's value can be configured to either increase or decrease as the soft joint moves closer to the center, or increase or decrease as it moves further from the center. Depth Physics is very similar to Local Distortion Physics, the measurement that drives the parameter's value to change is just different.

Each supported parameter has the following sliders:

![UI_depth_physics.jpg](/assets/screens/naturalis/v1_3/UI_depth_physics.jpg)

| Term | Definition |
| ---- | ---------- |
| **Effect** | How much the parameter's value changes (per unit of distance) when a joint moves closer to the center (depth in) or further from the center (depth out). A positive value means the parameter's value will increase, a negative value means the parameter's value will decrease. |
| **Sensitivity** | The ease at which the effect is applied when there's only a small amount of change in depth. A value of 1 means the effect is applied linearly: the parameter's value will change proportionally with depth. A value of 0 means the effect is applied along a steep S-curve, making the change noticeable only when there's a very significant deformation in the mesh. |

### Default Settings

As with Local Distortion Physics, a lot of behaviors are possible with custom settings. By default:

| Physics Parameter | Description |
|-------------------|-------------|
| Fat Spring | Increases with depth in, decreases with depth out. Simulates how the mesh will resist compression in the depth direction the more you compress. |
| Fat Damper | Decreases with both depth in and out. |
| Fat Mass | Increases with depth in to emphasize how compressing an area increases the density of that area, and decreases with depth out to reduce density. |
| Fat Distance Limit | No effect by default. |
| Fat Pressure Multiplier | No effect by default. |
| Fat Collider Radius | Increases with both depth in and out. As with Local Distortion Physics, the idea here is to reduce clipping. |
| Fat Collider Depth | No effect by default. |
| Fat Collider Friction | Increases with depth in, making colliders that are pushed in slightly more sticky due to the force pushing them in. |
