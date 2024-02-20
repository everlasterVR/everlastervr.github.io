### Forces, Hold & Dampening

![UI_clothing_joint_physics.jpg](/assets/screens/naturalis/v1_3/UI_clothing_joint_physics.jpg)

Forces simulate the way clothing pushes breasts/glutes. They automatically change the physical behavior and apply directional morphing, just like gravity would if rotating the person's pose.

"Hold" increases joint springs, making the breast or glute stay in place more rigidly. "Dampening" adjusts the joint dampers. These are split for YX and Z, i.e. up/down/left/right is one slider, in/out is another. The percentage means how much the physics parameters are increased from their calibrated value towards the maximum value of that parameter.

### Soft Physics On Covered Areas

![UI_clothing_soft_physics.jpg](/assets/screens/naturalis/v1_3/UI_clothing_soft_physics.jpg)

You can make soft physics behave differently on the area covered by a clothing item. Since each item is different, the plugin needs to find which soft joints are covered by the item - this is easy to do:

1. click on Find Covered Soft Joints, and the plugin will try to automatically determine the area
2. hover with the mouse (desktop mode only) over any of the visualized soft joints, and toggle its selection on/off by pressing Ctrl

Adjusting the physics: for example, increasing Fat Spring % affects all of the selected clothing coverage joints, making them more rigid.

### Morph Adjustments

![UI_clothing_morph_adjustments.jpg](/assets/screens/naturalis/v1_3/UI_clothing_morph_adjustments.jpg)

**Morph offsets** allow you to shift the angle that is used for calculating morph values when the joint rotates left/right, up/down or moves in the in/out direction. This produces morphing without actually rotating or moving the joint. The idea is to primarily use the [forces](#forces-hold--dampening). to physically move the breasts, and then fine tune the shape with the morph offsets. See also [morph transition timer](#morph-transition-timer).

**Reduce Size** can be used to better match the clothed breast size to the naked breast size. It's intended to be used with clothing that fully covers the breasts.Toggle the item on and off to easily check if the breast size looks the same clothed and uncovered.

**Flatten Nipples** sets a limit on how long nipples can be. The reduction in length is done with a morph based on the built in Nipples Depth morph. The settings works automatically to eliminate clipping regardless of what look the clothing is enabled on (i.e. regardless of base nipple shape).
