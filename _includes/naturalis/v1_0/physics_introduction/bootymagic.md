| Term | Definition |
|------|------------|
| **Joint physics** | Physics of the glute joint, used for simulating the basic physical properties of the glute. The parameters are equivalent to the Additional Joints parameters in the F Glute Physics tab when using standard VAM physics. |
| **Soft physics** | Glute soft body physics mesh. Consists of joints and associated colliders that target specific glute skin vertices. The parameters are equivalent to the Soft Physics parameters in the F Glute Physics tab when using standard VAM physics. |

### Joint Physics Parameters

| **Glute Joint Mass** | Mass of the glute joint. Since mass represents glute size, other physics parameters are adjusted based on its value. |
| **Center Of Gravity** | Position of the glute joint's center of mass. At 1 it is at the skin surface. |
| **Spring** | Spring pushes the glute joint towards its angle target. The angle target is defined by the Up/Down and Left/Right Angle Target parameters. |
| **Damper** | Damper reduces oscillation around the joint's angle target. The higher the damper, the quicker glutes will stop swinging. |
| **In/Out Spring** | In/Out Spring pushes the glute joint towards its position target along the Z axis. |
| **In/Out Damper** | In/Out Damper reduces oscillation around the joint position target along the Z axis. |
| **Up/Down Angle Target** | Vertical target angle of the glute joint. Negative values pull glutes down, positive values push them up. |
| **Left/Right Angle Target** | Horizontal target angle of the pectoral joint. A negative value pulls glutes apart, positive values push them together. |

### Soft Physics Parameters

| Parameter | Description |
|-----------|-------------|
| **Fat Spring** | Fat Spring holds each soft joint in its target position. Low fat spring makes glute fat soft and slow. High fat spring makes it rigid and quick to return to its normal shape. |
| **Fat Damper** | Fat Damper reduces oscillation of each soft joint around its target position. Low fat damper makes glute fat jiggle more easily. |
| **Fat Mass** | Fat Mass determines the mass of each soft joint and the density of glute fat overall. Increasing glute size without increasing fat mass reduces density. |
| **Fat Collider Radius** | Fat Collider Radius is a scaling factor for the size of the colliders connected to each soft joint. The actual size varies per collider and automatically scales with glute size. |
| **Fat Collider Depth** | Fat Collider Depth offsets collider positions relative to skin surface. Negative values pull colliders out from the glute, positive values push them into the glute. |
| **Fat Distance Limit** | Fat Distance Limit is the maximum distance each soft joint can move away from its target position. |
| **Fat Bk Force** | Fat Bk Force applies a force to the glute joint based on the movement of each soft joint. Low back force (not 0) helps move the glute with collision, and adds a dampening effect. High force can create a feedback loop that spirals out of control. |
| **Fat Bk Force Max Force** | Fat Bk Force Max Force sets an upper limit on the magnitude of back force. Along with Fat Bk Force Threshold, this can be used to prevent an out of control feedback loop. |
| **Fat Bk Force Threshold** | Fat Bk Force Threshold sets a minimum distance each soft joint needs to move for back force to be applied, ensuring that small movements don't cause the whole glute to move. Along with Fat Bk Force Max Force, this can be used to prevent an out of control feedback loop. |
