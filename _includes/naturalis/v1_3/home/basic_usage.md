In the BootyMagic or TittyMagic plugin UI, the main window has settings for easily adjusting the overall behavior and toggling soft physics features. For basic use, the main window generally has everything you need.

Softness, quickness and joint mass affect a lot of different settings from physics parameters to colliders and how morphs are applied. All of the user multipliers and offsets deeper in the UI (e.g. the offset of a particular physics parameter) apply on top of the base value that the plugin calculates based on the softness, quickness and mass slider values.

![UI_main_tittymagic.jpg](/assets/screens/naturalis/v1_3/UI_main_tittymagic.jpg)

### Softness

In Naturalis v1.3, you can adjust Softness independently for the joints and the soft physics mesh. Softness affects how easily glutes/breasts deform and how jiggly they are.

- **Softness (Soft Physics)** affects mainly soft physics parameter values, and only has an effect when soft physics is enabled
- **Softness (Joint Physics)** affects everything else: joint physics parameters, collider properties, the amount of morphing, how gravity affects breasts/glutes

Fine tuning these sliders to your individual preference goes a long way towards getting the behavior your want.

### Quickness

The **Quickness Offset** slider affects a few physics settings that determine how quickly glutes/breasts move, both in terms of joint and soft physics. The default value should feel realistic in most cases and for most users. In specific cases, fine tuning it might be useful - e.g. VAM's physics rate setting can have an effect on how responsive the physics simulation feels.

### Mass

The plugin calculates mass automatically by estimating the actual glute/breast volume. The **Joint Mass Offset** slider allows you to increase or decrease the mass relative to the calculated mass, and the rest of the physics settings that are automatically adjusted by the plugin will take that into account.

### Advanced Soft Physics

These features add advanced functionality and behavior to the soft physics mesh. Their behavior can be customized further in the Physics tab - more information on the [Advanced Soft Physics](../advanced_soft_physics/) page. Short explanations of these features:

- **Local Distortion Physics** enables soft physics parameters to adjust dynamically based on local skin compression and stretching (distances of individual soft physics joints from its neighboring joints)
  - Example: Fat Spring increases as skin is compressed, causing the local area to resist further compression
- **Depth Physics** enables soft physics parameters to adjust dynamically based on the local skin depth (distances of individual soft physics joints from the center of the glute/breast)
  - Example: Fat Spring increases as skin is pushed in by collision, causing the local area to become more rigid
- **Mesh Pressure** expands the overall glute/breast soft physics mesh with an internal pressure force in response to skin being pushed towards the center - this prevents the mesh from losing volume when grabbed or collided with, and helps produce more realistic shapes when collision is occurring
- **Collider Friction** allows the skin to become more slippery automatically when skin gloss is increased, see the [Collider Friction](../collider_friction/) page for more info

### Presets

The plugin has a preset system for handling in-plugin presets for BootyMagic and TittyMagic separately. See the [Saving and Loading Presets](../saving_and_loading_presets/) page for more info.
