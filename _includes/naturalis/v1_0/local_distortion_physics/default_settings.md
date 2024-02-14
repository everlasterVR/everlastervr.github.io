The default settings are mostly a result of experimentation. There's a very wide range of possible physics behaviours you can achieve by adjusting the LDP parameters along with different [offset](../physics_offsets/) and [gradient](../soft_physics_gradient/), so feel free to experiment yourself!

The same defaults apply to both BootyMagic and TittyMagic (except for fat distance limit).

### Fat Spring

| Slider | Value |
| ------ | ----- |
| Compression Effect | 0.62 |
| Compression Sensitivity | 0.70 |
| Stretching Effect | 0.62 |
| Stretching Sensitivity | 0.70 |

Fat Spring increases with both stretching and compression. The idea is simulate how the glute or breast tissue resists changes in shape beyond a certain limit. To compensate for this, the base value for fat spring is lower with LDP enabled, so breasts and glutes are softer in their calibrated shape, and become firmer as they're compressed or stretched.

### Fat Damper

| Slider | Value |
| ------ | ----- |
| Compression Effect | -0.50 |
| Compression Sensitivity | 0.80 |
| Stretching Effect | -0.50 |
| Stretching Sensitivity | 0.80 |

Fat Damper is configured to decrease with both compression and stretching. This slightly exaggerates the jiggle physics in animations, but in a way that prevents the joints from oscillating too much when in the calibrated "resting" shape.

### Fat Mass

| Slider | Value |
| ------ | ----- |
| Compression Effect | 0.70 |
| Compression Sensitivity | 0.80 |
| Stretching Effect | -0.35 |
| Stretching Sensitivity | 0.80 |

By default, Fat Mass increases with compression and decreases with stretching. The idea is to facilitate "rippling" of the physics mesh. Joints which have different fat mass will move/accelerate at different speeds (due to having different inertia) when forces are applied.

### Fat Collider Radius

| Slider | Value |
| ------ | ----- |
| Compression Effect | 0.10 |
| Compression Sensitivity | 0.70 |
| Stretching Effect | 0.40 |
| Stretching Sensitivity | 0.70 |

Fat Collider Radius increases slightly with compression, and increases more with stretching. The dynamic increase in size makes the colliders push back at colliding objects and helps reduce clipping through the gaps between colliders.

### Fat Collider Depth

| Slider | Value |
| ------ | ----- |
| Compression Effect | 0.00 |
| Compression Sensitivity | 0.80 |
| Stretching Effect | 1.00 |
| Stretching Sensitivity | 0.90 |

Fat Collider Depth increases with stretching. This makes colliding objects bury themselves in the mesh the more force is being applied that stretches out the mesh.

### Fat Distance Limit

| Slider | Value |
| ------ | ----- |
| Compression Effect | 0.00 |
| Compression Sensitivity | 0.80 |
| Stretching Effect | 0.70 (BootyMagic), 1.00 (TittyMagic) |
| Stretching Sensitivity | 0.80 |

With LDP enabled, the base value for Fat Distance Limit is lower, but it increases with stretching. The idea is that when the overall shape of the glute or breast is maintained, it stays better in place (e.g. in fast animations), but the mesh still allows for drastic changes in shape.
