The primary purpose of calibration is to zero pose morphs around a calibrated center, so that deviation from that position will result in the correct amount of directional morphing. The position of that center is different for every glute or breast size and shape. As an example, if you decrease spring, breasts will hang lower, preventing upward morphing from taking effect correctly until you run the calibration which will zero the morph adjustments around the lower position.

In addition, when softness or quickness is changed or when the base size or shape of breasts or glutes is changed, calibration is needed to apply changes to physics, collider properties and how morphs are adjusted.

At the start of calibration, a standard pose is loaded, person collision is disabled, and any controls linked to some control on the person atom are unlinked. Then the plugin runs through the calibration, applies all physics parameters, and configures gravity and hard colliders for the given size and softness. Finally the pose before calibration is restored, collision is re-enabled, and previously linked controls are re-linked.

## Pending State

Naturalis keeps track of changes that require calibration, and puts calibration to pending if such a change is detected, independently for TittyMagic and BootyMagic.

Undoing all of the changes that require calibration will clear the pending calibration (except in some cases, e.g. when toggling soft physics).

## Local Distortion Physics

Normally, breasts and glutes are only calibrated for the shape that they are in when the person is standing up and gravity is acting downward along the chest or hip.

However, when Local Distortion Physics is enabled, calibration is multidirectional and takes a bit longer. This is because the neutral shape of the soft physics mesh needs to be calibrated for different directions of gravity. This way, deformations in the mesh due to forces other than gravity can be detected regardless of the person's pose.
