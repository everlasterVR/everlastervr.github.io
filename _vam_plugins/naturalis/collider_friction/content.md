Collider friction can be configured in the Skin Materials 2 tab.

![1_0_collider_friction.jpg](/assets/screens/naturalis/1_0_collider_friction.jpg)

> **Note**: Collider friction of hard colliders falls off with distance from their calibrated position to prevent them from sticking to colliding objects.

## Adaptive Friction

Enable adaptive friction to make collider friction dependent on skin glossiness, i.e. to make breasts and glutes slippery when wet. Adaptive friction is disabled by default because the **Gloss** slider's value will result in a different apparent glossiness with different skins and different **Gloss Texture Offset** slider values.

To setup a skin for optimal use with adaptive friction:

1. Set **Gloss** to max (8.000)
2. Increase **Gloss Texture Offset** until increasing it further doesn't result in any change to the skin's apparent glossiness

Now, the maximum Gloss value means the lowest friction, and matches the highest apparent glossiness. Decreasing Gloss will then both increase friction and reduce the apparent glossiness.

**Specular Bumpiness** also has an effect on friction.

**Dry Skin Friction** corresponds to the friction that colliders can have when Gloss and Specular Bumpiness are low. Generally, you'll want to keep it at 1.000 - the relatively low number of soft colliders in VAM already makes it feel like there's not enough friction with skin contact.
