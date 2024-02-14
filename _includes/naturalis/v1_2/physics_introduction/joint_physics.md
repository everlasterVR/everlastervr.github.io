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
