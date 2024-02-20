
These parameters are equivalent to the Additional Joints parameters in the F Glute Physics and F Breast Physics 1 tabs when using standard VAM physics, but also include extra parameters and many features that are unique to Naturalis.

An explanation of each parameter and what it does is included within the plugin UI as well.

In Breast Weight / Glute Weight window:

| **Glute Joint Mass** / **Breast Joint Mass** | Mass of the glute/breast joint. Multiplied by the gravity force, this produces the weight of the joint. |
| **Breast Gravity** / **Glute Gravity** | Custom direction based gravity implementation which overrides the 9.81 m/s^2 gravity experienced by the joint by default. |
| **Rotation Inertia** | The joint's resistance to change in rotation. |

Continuing down the list:

| **Center Of Gravity** | Position of the joint's center of mass. At 1 it is at the skin surface. |
| **Rotation Spring** | Rotation Spring pushes the joint towards its angle target. The angle target is defined by the Up/Down and Left/Right Angle Target parameters. |
| **Rotation Damper** | Rotation Damper reduces oscillation around the joint's angle target. The higher the damper, the quicker the joint will stop swinging back and forth. |
| **Right/Left Spring** | (TittyMagic only) Right/Left Spring pushes the pectoral joint towards its position target along the X axis. |
| **Right/Left Damper** | (TittyMagic only) Right/Left Damper reduces oscillation around the joint's position target along the X axis. |
| **In/Out Spring** | In/Out Spring pushes the joint towards its position target along the Z axis. |
| **In/Out Damper** | In/Out Damper reduces oscillation around the joint's position target along the Z axis. |

In the Up/Down Angle window:

| **Up/Down Base Angle** | Adjusts the joint's vertical rotation using morphs. This is used to offset the amount of droop caused by other physics parameters such as angle target, mass and spring. |
| **Up/Down Angle Target** | Vertical target angle of the joint. A negative value pulls the joint down, a positive value pushes it up. |
| **Up Angle Limit** | The maximum angle the joint can rotate up. |
| **Down Angle Limit** | The maximum angle the joint can rotate down. |

In the Right/Left Angle window:

| **Right/Left Base Angle** | Adjusts the joint's sideways rotation using morphs. |
| **Right/Left Angle Target** | Horizontal target angle of the joint. A negative value pulls the joints apart, a positive value pushes them together. |
| **Right/Left Angle Limit** | The maximum angle the joint can rotate sideways. |

And finally, exclusive to TittyMagic:

| **Twist Angle Target** | Forward axis angle of the pectoral joint. The final value depends on the person's pose. The offset determines the max angle when the person is upright. The angle is inverted when upside down and zero when horizontal. |
