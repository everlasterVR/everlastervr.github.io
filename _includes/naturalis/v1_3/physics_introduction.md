Breasts use bones and joints that connect to the chest and hang off of it, affected by gravity according to the joint's mass. These joints can rotate, move and jiggle depending on the exact physics settings such as springs, dampers and joint limits. For glutes, it works the same, with glute joints which connect to the hip.

Soft physics enables an additional system where individual skin vertices have "soft physics joints", forming a "soft physics mesh" that covers the glutes/breasts. It adds more fine grained jiggle physics to the skin and enables much more accurate collision detection at the cost of CPU performance.

Based on this, physics parameters are divided into joint physics parameters and soft physics parameters. Joint physics parameters are further divided into Joint Physics and Joint Angles groups, and soft physics parameters are further divided into Soft Physics and Fat Colliders groups.

![UI_physics_tab.jpg](/assets/screens/naturalis/v1_3/UI_physics_tab.jpg)

The values of physics parameters are calculated automatically during calibration. The calibrated value depends on the model's glute/breast size and the sliders in the main window (softness, quickness and mass offset). For more precise customization, see [Physics Customization](../physics_customization/) which goes over offsetting the parameters directly, and additional options for joint physics and soft physics. Parameter values can be affected by [clothing adjustment profiles](../clothing/).

## Joint Physics Parameters

{% include naturalis/v1_3/physics_introduction/joint_physics.md %}

## Soft Physics Parameters

{% include naturalis/v1_3/physics_introduction/soft_physics.md %}
