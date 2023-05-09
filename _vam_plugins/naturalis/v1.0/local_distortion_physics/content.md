Local Distortion Physics (**LDP**) enables soft physics to react to local skin **compression** and **stretching**.

It changes the values of soft physics parameters on individual soft joints based on the distances of those joints from their neighboring joints. When the distance decreases, the mesh is compressing at that joint, and when the distance increases, the mesh is stretching at that joint - in other words, there's local distortion in the mesh.

<div class='video-container'>
  <iframe
    src='https://videos.sproutvideo.com/embed/ac9fdbb31b1de6c125/34148bf0d70df5e6?playerTheme=dark&amp;playerColor=2f3437'
    allowfullscreen
    referrerpolicy='no-referrer-when-downgrade'
    title='Local Distortion Physics'>
  </iframe>
</div>

The distortion visualization grid is only shown for the left glute or breast.

> **Tip: Applying Only To Left Glute/Breast**<br/>
> When this option is enabled, any changes to the local distortion values only apply to the left glute or breast, allowing you to compare the original behaviour with the changed behaviour side by side. The right glute or breast will use the default values for local distortion physics.

## Adjustable Parameters

LDP works on the **Fat Spring**, **Fat Damper**, **Fat Mass**, **Fat Collider Radius**, **Fat Collider Depth** and **Fat Distance Limit** parameters.

Each parameter has the following slider settings:

![1_0_ldp_sliders.jpg](/assets/screens/naturalis/1_0_ldp_sliders.jpg)

| Term | Definition |
| ---- | ---------- |
| **Effect** | How much the parameter's value changes (per unit of distance) when a joint's distance from its neighboring joints decreases (compression) or increases (stretching). A positive value means the parameter's value will increase, a negative value means the parameter's value will decrease. |
| **Sensitivity** | The ease at which the effect is applied when there's only a small amount of change in distance. A value of 1 means the effect is applied linearly: the parameter's value will change proportionally with distance. A value of 0 means the effect is applied along a steep S-curve, making the local distortion effect noticeable only when there's a very signifcant deformation in the mesh. |

## Default Settings

The default settings are mostly a result of experimentation. There's a very wide range of possible physics behaviours you can achieve by adjusting the LDP parameters along with different [offset](/docs/naturalis/v1_0/physics_offsets) and [gradient](/docs/naturalis/v1_0/soft_physics_gradient), so feel free to experiment yourself!

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

Fat Collider Radius increases slightly when there's compression, and increases more when there's stretching. The dynamic increase in size makes the colliders push back at colliding objects and helps reduce clipping through the gaps between colliders

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

## Performance & User Preferences

LDP has a slight performance impact, which can be detrimental to the experience if you're not hitting a stable framerate. Therefore it's disabled by default, but in **Naturalis User Preferences**, you can set it to be enabled by default when soft physics is enabled.

In the user preferences, **LDP Update Rate** is set to 30 Hz by default. This results in a good balance between responsiveness and performance.

| Update Rate | Description |
| ----------- | ----------- |
| 20 Hz | Reduces performance impact slightly, but soft physics values update less frequently. |
| 30 Hz | Recommended for most users. |
| 40 Hz | Increases performance impact slightly. Might be worth as a default setting for very high end CPUs. |
| 60 Hz | Increases performance impact, and results in very accurate updates to soft physics values. |
