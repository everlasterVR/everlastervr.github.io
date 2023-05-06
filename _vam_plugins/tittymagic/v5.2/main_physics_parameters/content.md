Main Physics Parameters include all of the adjustable settings from the Person atom's F Breast Physics 1 tab. Every physics parameter can be adjusted with an offset from the automatically calculated value.

In addition, TittyMagic exposes a Twist Angle Target parameter which is the Z axis equivalent of the Up/Down and Left/Right angle targets.

These settings are applied to the pectoral joint on the person atom. The pectoral joint is actually located quite far back inside the chest, but its center of gravity is moved towards the nipple to make it behave as a "breast joint". Realistically this doesn't make a lot of sense, but it's how it works in VAM.

Every physics parameter can be adjusted with an offset from the automatically calculated value.

> Enable the Apply Only To Left Breast checkbox to compare the manually adjusted value on the left breast to the automatically calculated value on the right breast. This makes it easy to check how the offset value affects the end result.

### Breast Mass

Mass of the pectoral joint.

Since mass represents breast size, other physics parameters are adjusted based on its value. Fat Collider Radius and Fat Distance Limit are adjusted using the mass estimated from volume, the rest are adjusted using the actual mass value that includes the offset.

### Center Of Gravity

Position of the pectoral joint's center of mass.

At 0, the center of mass is inside the chest at the pectoral joint. At 1, it is at the nipple. Between about 0.5 and 0.8, the center of mass is within the bulk of the breast volume.

### Spring

Magnitude of the spring that pushes the pectoral joint towards its angle target.

The angle target is defined by the Up/Down, Left/Right and Twist Angle Target parameters.

### Damper

Magnitude of the damper that reduces oscillation around the joint angle target.

The higher the damper, the quicker breasts will stop swinging.

### In/Out Spring

Magnitude of the spring that pushes the pectoral joint towards its position target along the Z axis.

Directional force morphing along the forward-back axis depends on In/Out Spring being suitably low for the given breast mass.

### In/Out Damper

Magnitude of the damper that reduces oscillation around the joint position target along the Z axis.

### Up/Down Angle Target

Vertical target angle of the pectoral joint. Negative values pull breasts down, positive values push them up.

The offset shifts the center around which the final angle is calculated based on chest angle (see [Breast Gravity](/docs/tittymagic/v5_2/breast_gravity)).

### Right/Left Angle Target

Horizontal target angle of the pectoral joint.

A negative offset pulls breasts apart, while a positive offset pushes them together.

### Twist Angle Target

Forward axis target angle of the pectoral joint. The actual angle depends on the pectoral joint's vertical angle. When the person is horizontal, the twist angle is zeroed. When upside down, it is inverted. This prevents the issue where using the angle to cause breasts to poke more inward or outward would have the opposite effect when upside down.
