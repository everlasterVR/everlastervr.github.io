Breast hard colliders in TittyMagic are the same five colliders per breast as those used by standard Virt-A-Mate breast physics. TittyMagic just adjusts their properties automatically when physics is calibrated, and exposes configuration options in the Configure Hard Colliders view.

Hard colliders are always enabled when TittyMagic is active.

The main purpose of hard colliders is to make it easier for breasts to move when touched. This is balanced with how easily breast morphs are applied when the breast moves. Collision that feels not too resistant but not too light and bouncy is only possible with a balanced combination of hard colliders and morphing.

TittyMagic reduces the collision force of all hard colliders to around one third of the normal amount. Technically, the collider's mass is reduced, but collision force describes the effect more intuitively: the lower the collision force, the less force the collider will impart on the breast when it moves, and the less the breast will move. In addition, all colliders are smaller and repositioned so that they fit inside the breast and fill most of the breast's volume.

## Configuration

This view can be accessed from the `Configure Hard Colliders...` button in the main screen.

![5_2_breast_hard_colliders.png](/assets/screens/tittymagic/5_2_breast_hard_colliders.png)

Colliders are accurately visualized when in this view.

`Base Collision Force` affects the collision force of all colliders, and the `Collision Force Multiplier` adjusts the force of the selected collider. If movement feels too heavy or light only in terms of the breast's response to touch, it is better to adjust the collision force instead of the [morph multipliers](Directional-Force-Morphing).

Configuring the positions and sizes can be helpful for optimizing them for a particular model or breast shape. This might even be necessary to prevent colliders from poking out of the breast when the breast shape is particularly saggy, pointy or flat - the automatic values work best for round "ideally shaped" breasts. Configuration is best done in an upright pose e.g. when the person is standing up, since shape of the breast matters a lot for how the colliders will be situated and sized automatically.
