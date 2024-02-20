These form the set of parameters that controls the behavior of the glute/breast soft physics mesh. They are broadly equivalent to the Soft Physics parameters in the F Glute Physics and F Breast Physics 2 tabs when using standard VAM physics, however with a lot of additional features, and the Fat Pressure Multiplier parameter is specific to the Mesh Pressure feature introduced in Naturalis v1.3.

All parameters (except Fat Back Force) have a smooth gradient from the outer edge to the middle of the mesh that gives each soft physics joint a slightly different value, and support Depth Physics and Local Distortion Physics adjustments.

Soft physics:

| **Fat Spring** | Fat Spring holds each soft joint in its target position. Low fat spring makes the soft physics mesh soft and slow. High fat spring makes it rigid and quick to return to its normal shape. |
| **Fat Damper** | Fat Damper reduces oscillation of each soft joint around its target position. Low fat damper makes the soft physics mesh jiggle more easily. |
| **Fat Mass** | Fat Mass determines the mass of each soft joint and the overall density of the mesh. Increasing glute/breast size without increasing fat mass reduces density. |
| **Fat Distance Limit** | Fat Distance Limit is the maximum distance each soft joint can move away from its target position. |
| **Fat Back Force** | Fat Bk Force applies a force to the joint based on the movement of each soft joint. The Max Force and Threshold parameters can be used to limit how easily and how much force gets applied. |
| **Fat Pressure Multiplier** | Controls the amount of internal pressure force, and thus the amount that the mesh expands when something deforms it. |

Fat colliders:

| **Fat Collider Radius** | Fat Collider Radius is a scaling factor for the size of the colliders connected to each soft joint. The actual size varies per collider and automatically scales with glute/breast size. |
| **Fat Collider Depth** | Fat Collider Depth offsets collider positions relative to skin surface. Negative values pull colliders out from the glute/breast, positive values push them into the glute/breast. |
| **Fat Collider Friction** | Fat Collider Friction sets the stickiness of individual soft colliders. |
