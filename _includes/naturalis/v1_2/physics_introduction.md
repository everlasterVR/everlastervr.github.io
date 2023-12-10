Physics parameters are divided into joint physics parameters and soft physics parameters.

- All parameters can be manually [offset from the calculated value](../physics_offsets/)
- Soft physics parameters can be [adjusted along a gradient](../soft_physics_gradient/)
- Soft physics parameters support [local distortion physics](../local_distortion_physics/)
- Some joint physics parameters have [gravity adjustments](../gravity_physics/) built in (soft physics parameters do not)
- Parameter values are automatically calculated during [calibration](../about_calibration/)
- Parameter values can be affected by clothing items [clothing adjustment profiles](../clothing/)

![1_2_physics_window_ui.jpg](/assets/screens/naturalis/1_2_physics_window_ui.jpg)

## Joint Physics

Joint physics is the set of parameters that simulates the basic physical properties of the glute/breast joint. Alongside Joint Angles, these parameters are equivalent to the Additional Joints parameters in the F Glute Physics and F Breast Physics 1 tabs when using standard VAM physics.

| **Glute Joint Mass** / **Breast Joint Mass** | Mass of the glute/breast joint. Since mass represents size, other physics parameters are adjusted based on its value. |
| **Center Of Gravity** | Position of the joint's center of mass. At 1 it is at the skin surface. |
| **Rotation Spring** | Rotation Spring pushes the joint towards its angle target. The angle target is defined by the Up/Down and Left/Right Angle Target parameters. |
| **Rotation Damper** | Rotation Damper reduces oscillation around the joint's angle target. The higher the damper, the quicker the joint will stop swinging back and forth. |
| **In/Out Spring** | In/Out Spring pushes the joint towards its position target along the Z axis. |
| **In/Out Damper** | In/Out Damper reduces oscillation around the joint's position target along the Z axis. |

In addition, TittyMagic has the following parameters:

| **Right/Left Spring** | Right/Left Spring pushes the pectoral joint towards its position target along the X axis. |
| **Right/Left Damper** | Right/Left Damper reduces oscillation around the joint's position target along the X axis. |

## Joint Angles

| **Up/Down Base Angle** | Adjusts the joint's vertical rotation using morphs. This is used to offset the amount of droop caused by other physics parameters such as angle target, mass and spring. |
| **Up/Down Angle Target** | Vertical target angle of the joint. A negative value pulls the joint down, a positive value pushes it up. |
| **Up Angle Limit** | The maximum angle the joint can rotate up. |
| **Down Angle Limit** | The maximum angle the joint can rotate down. |
| **Right/Left Base Angle** | Adjusts the joint's sideways rotation using morphs. |
| **Right/Left Angle Target** | Horizontal target angle of the joint. A negative value pulls the joints apart, a positive value pushes them together. |
| **Right/Left Angle Limit** | The maximum angle the joint can rotate sideways. |

In addition, TittyMagic has the following parameter:

| **Twist Angle Target** | Forward axis angle of the pectoral joint. The final value depends on the person's pose. The offset determines the max angle when the person is upright. The angle is inverted when upside down and zero when horizontal. |

## Soft Physics

Soft physics is the set of parameters that controls the behavior of the glute/breast soft physics mesh. Alongside Fat Colliders, these parameters are equivalent to the Soft Physics parameters in the F Glute Physics and F Breast Physics 2 tabs when using standard VAM physics.

| **Fat Spring** | Fat Spring holds each soft joint in its target position. Low fat spring makes the soft physics mesh soft and slow. High fat spring makes it rigid and quick to return to its normal shape. |
| **Fat Damper** | Fat Damper reduces oscillation of each soft joint around its target position. Low fat damper makes the soft physics mesh jiggle more easily. |
| **Fat Mass** | Fat Mass determines the mass of each soft joint and the overall density of the mesh. Increasing glute/breast size without increasing fat mass reduces density. |
| **Fat Distance Limit** | Fat Distance Limit is the maximum distance each soft joint can move away from its target position. |
| **Fat Back Force** | Fat Bk Force applies a force to the joint based on the movement of each soft joint. The Max Force and Threshold parameters can be used to limit how easily and how much force gets applied. |

## Fat Colliders

| **Fat Collider Radius** | Fat Collider Radius is a scaling factor for the size of the colliders connected to each soft joint. The actual size varies per collider and automatically scales with glute/breast size. |
| **Fat Collider Depth** | Fat Collider Depth offsets collider positions relative to skin surface. Negative values pull colliders out from the glute/breast, positive values push them into the glute/breast. |
| **Fat Collider Friction** | Fat Collider Friction sets the stickiness of individual soft colliders.
