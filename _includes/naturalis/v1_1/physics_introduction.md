Physics parameters are divided into joint physics parameters and soft physics parameters.

- All parameters can be manually [offset from the calculated value](../physics_offsets/)
- Soft physics parameters can be [adjusted along a gradient](../soft_physics_gradient/)
- Soft physics parameters support [local distortion physics](../local_distortion_physics/)
- Some joint physics parameters have [gravity adjustments](../gravity_physics/) built in (soft physics parameters do not)
- Parameter values are automatically calculated during [calibration](../about_calibration/)
- Parameter values can be affected by clothing items [clothing adjustment profiles](../clothing/)

## BootyMagic

| Term | Definition |
|------|------------|
| **Joint physics** | Physics of the glute joint, used for simulating the basic physical properties of the glute. The parameters are equivalent to the Additional Joints parameters in the F Glute Physics tab when using standard VAM physics. |
| **Soft physics** | Glute soft body physics mesh. Consists of joints and associated colliders that target specific glute skin vertices. The parameters are equivalent to the Soft Physics parameters in the F Glute Physics tab when using standard VAM physics. |

### Joint Physics Parameters

| **Glute Joint Mass** | Mass of the glute joint. Since mass represents glute size, other physics parameters are adjusted based on its value. |
| **Center Of Gravity** | Position of the glute joint's center of mass. At 1 it is at the skin surface. |
| **Rotation Spring** | Rotation Spring pushes the glute joint towards its angle target. The angle target is defined by the Up/Down and Left/Right Angle Target parameters. |
| **Rotation Damper** | Rotation Damper reduces oscillation around the joint's angle target. The higher the damper, the quicker glutes will stop swinging. |
| **In/Out Spring** | In/Out Spring pushes the glute joint towards its position target along the Z axis. |
| **In/Out Damper** | In/Out Damper reduces oscillation around the joint position target along the Z axis. |
| **Up/Down Angle Target** | Vertical target angle of the glute joint. Negative values pull glutes down, positive values push them up. |
| **Left/Right Angle Target** | Horizontal target angle of the pectoral joint. A negative values pull glutes apart, positive values push them together. |

### Soft Physics Parameters

| Parameter | Description |
|-----------|-------------|
| **Fat Spring** | Fat Spring holds each soft joint in its target position. Low fat spring makes glute fat soft and slow. High fat spring makes it rigid and quick to return to its normal shape. |
| **Fat Damper** | Fat Damper reduces oscillation of each soft joint around its target position. Low fat damper makes glute fat jiggle more easily. |
| **Fat Mass** | Fat Mass determines the mass of each soft joint and the density of glute fat overall. Increasing glute size without increasing fat mass reduces density. |
| **Fat Collider Radius** | Fat Collider Radius is a scaling factor for the size of the colliders connected to each soft joint. The actual size varies per collider and automatically scales with glute size. |
| **Fat Collider Depth** | Fat Collider Depth offsets collider positions relative to skin surface. Negative values pull colliders out from the glute, positive values push them into the glute. |
| **Fat Collider Friction** | Fat Collider Friction sets the stickiness of individual soft colliders.
| **Fat Distance Limit** | Fat Distance Limit is the maximum distance each soft joint can move away from its target position. |
| **Fat Bk Force** | Fat Bk Force applies a force to the glute joint based on the movement of each soft joint. Low back force (not 0) helps move the glute with collision, and adds a dampening effect. High force can create a feedback loop that spirals out of control. |
| **Fat Bk Force Max Force** | Fat Bk Force Max Force sets an upper limit on the magnitude of back force. Along with Fat Bk Force Threshold, this can be used to prevent an out of control feedback loop. |
| **Fat Bk Force Threshold** | Fat Bk Force Threshold sets a minimum distance each soft joint needs to move for back force to be applied, ensuring that small movements don't cause the whole glute to move. Along with Fat Bk Force Max Force, this can be used to prevent an out of control feedback loop. |

## TittyMagic

| Term | Definition |
|------|------------|
| **Joint physics** | Physics of the breast joint (also known as pectoral joint), used for simulating the basic physical properties of the breast. The parameters are equivalent to those in the F Breast Physics 1 tab when using standard VAM physics. |
| **Soft physics** | Breast soft body physics mesh. Consists of joints and associated colliders that target specific breast skin vertices. The parameters are equivalent to those in the F Breast Physics 2 tab when using standard VAM physics. |

### Joint Physics Parameters

| Parameter | Description |
|-----------|-------------|
| **Breast Joint Mass** | Mass of the pectoral joint. Since mass represents breast size, other physics parameters are adjusted based on its value. |
| **Center Of Gravity** | Position of the pectoral joint's center of mass. At 0, the center of mass is inside the chest at the pectoral joint. At 1, it is at the nipple. Between about 0.5 and 0.8, the center of mass is within the bulk of the breast volume. |
| **Rotation Spring** | Rotation Spring pushes the pectoral joint towards its angle target. The angle target is defined by the Up/Down, Left/Right and Twist Angle Target parameters. |
| **Rotation Damper** | Rotation Damper reduces oscillation around the joint's angle target. The higher the damper, the quicker breasts will stop swinging. |
| **Right/Left Spring** | Right/Left Spring pushes the pectoral joint towards its position target along the X axis. |
| **Right/Left Damper** | Right/Left Damper reduces oscillation around the joint's position target along the X axis. |
| **In/Out Spring** | In/Out Spring pushes the pectoral joint towards its position target along the Z axis. |
| **In/Out Damper** | In/Out Damper reduces oscillation around the joint position target along the Z axis. |
| **Up/Down Angle Target** | Vertical target angle of the pectoral joint. Negative values pull breasts down, positive values push them up. |
| **Left/Right Angle Target** | Horizontal target angle of the pectoral joint. Negative values pull breasts apart, positive values push them together. |
| **Twist Angle Target** | Forward axis angle of the pectoral joint. The final value depends on the person's pose. The offset determines the max angle when the person is upright. The angle is inverted when upside down and zero when horizontal. |

### Soft Physics Parameters

| Parameter | Description |
|-----------|-------------|
| **Fat Spring** | Fat Spring holds each soft joint in its target position. Low fat spring makes breast fat soft and slow. High fat spring makes it rigid and quick to return to its normal shape. |
| **Fat Damper** | Fat Damper reduces oscillation of each soft joint around its target position. Low fat damper makes breast fat jiggle more easily. |
| **Fat Mass** | Fat Mass determines the mass of each soft joint and the density of breast fat overall. Increasing breast size without increasing fat mass reduces density. |
| **Fat Collider Radius** | Fat Collider Radius is a scaling factor for the size of the colliders connected to each soft joint. The actual size varies per collider and automatically scales with breast size. |
| **Fat Collider Depth** | Fat Collider Depth offsets collider positions relative to skin surface. Negative values pull colliders out from the breast, positive values push them into the breast. |
| **Fat Collider Friction** | Fat Collider Friction sets the stickiness of individual soft colliders.
| **Fat Distance Limit** | Fat Distance Limit is the maximum distance each soft joint can move away from its target position. |
| **Fat Bk Force** | Fat Bk Force applies a force to the pectoral joint based on the movement of each soft joint. Low back force (not 0) helps move the breast with collision, and adds a dampening effect. High force can create a feedback loop that spirals out of control. |
| **Fat Bk Force Max Force** | Fat Bk Force Max Force sets an upper limit on the magnitude of back force. Along with Fat Bk Force Threshold, this can be used to prevent an out of control feedback loop. |
| **Fat Bk Force Threshold** | Fat Bk Force Threshold sets a minimum distance each soft joint needs to move for back force to be applied, ensuring that small movements don't cause the whole breast to move. Along with Fat Bk Force Max Force, this can be used to prevent an out of control feedback loop. |
