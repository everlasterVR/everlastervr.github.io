| Term | Definition |
|------|------------|
| **Joint physics** | Physics of the breast joint (also known as pectoral joint), used for simulating the basic physical properties of the breast. The parameters are equivalent to those in the F Breast Physics 1 tab when using standard VAM physics. |
| **Soft physics** | Breast soft body physics mesh. Consists of joints and associated colliders that target specific breast skin vertices. The parameters are equivalent to those in the F Breast Physics 2 tab when using standard VAM physics. |

### Joint Physics Parameters

| Parameter | Description |
|-----------|-------------|
| **Breast Joint Mass** | Mass of the pectoral joint. Since mass represents breast size, other physics parameters are adjusted based on its value. |
| **Center Of Gravity** | Position of the pectoral joint's center of mass. At 0, the center of mass is inside the chest at the pectoral joint. At 1, it is at the nipple. Between about 0.5 and 0.8, the center of mass is within the bulk of the breast volume. |
| **Spring** | Spring pushes the pectoral joint towards its angle target. The angle target is defined by the Up/Down, Left/Right and Twist Angle Target parameters. |
| **Damper** | Damper reduces oscillation around the joint's angle target. The higher the damper, the quicker breasts will stop swinging. |
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
| **Fat Distance Limit** | Fat Distance Limit is the maximum distance each soft joint can move away from its target position. |
| **Fat Bk Force** | Fat Bk Force applies a force to the pectoral joint based on the movement of each soft joint. Low back force (not 0) helps move the breast with collision, and adds a dampening effect. High force can create a feedback loop that spirals out of control. |
| **Fat Bk Force Max Force** | Fat Bk Force Max Force sets an upper limit on the magnitude of back force. Along with Fat Bk Force Threshold, this can be used to prevent an out of control feedback loop. |
| **Fat Bk Force Threshold** | Fat Bk Force Threshold sets a minimum distance each soft joint needs to move for back force to be applied, ensuring that small movements don't cause the whole breast to move. Along with Fat Bk Force Max Force, this can be used to prevent an out of control feedback loop. |
