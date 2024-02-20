LDP works on the **Fat Spring**, **Fat Damper**, **Fat Mass**, **Fat Collider Radius**, **Fat Collider Friction**, **Fat Collider Depth**, and **Fat Distance Limit** parameters.

Each parameter has the following slider settings:

![1_0_ldp_sliders.jpg](/assets/screens/naturalis/1_0_ldp_sliders.jpg)

| Term | Definition |
| ---- | ---------- |
| **Effect** | How much the parameter's value changes (per unit of distance) when a joint's distance from its neighboring joints decreases (compression) or increases (stretching). A positive value means the parameter's value will increase, a negative value means the parameter's value will decrease. |
| **Sensitivity** | The ease at which the effect is applied when there's only a small amount of change in distance. A value of 1 means the effect is applied linearly: the parameter's value will change proportionally with distance. A value of 0 means the effect is applied along a steep S-curve, making the local distortion effect noticeable only when there's a very significant deformation in the mesh. |
