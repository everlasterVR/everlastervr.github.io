## Troubleshooting

### Animation or sound is freezing repeatedly

You are probably using another plugin that animates morphs in a way that is incompatible with TittyMagic's Auto-Update Mass feature (see Plugin Compatibility below). To work around this, uncheck the Auto-Update Mass checkbox in the plugin UI.

### Breasts move too slowly

A common reason for this is low frame rate. Movement can appear slow whenever frame rate is lower than physics rate. See [Physics Rate and Frame Rate](/docs/general/physics_rate_and_frame_rate/). For guides on improving frame rate in VAM, check [Guides (Hub)](https://hub.virtamate.com/resources/categories/guides.13/).

If breasts move slowly even with synced physics rate and frame rate, check that the softness slider value is not too low, and reset any offsets on Spring, Fat Spring and Fat Mass in the Physics Params tab.

### Soft physics is not working

For breast soft physics to work, soft physics must be enabled in [User Preferences (Hub)](https://hub.virtamate.com/wiki/user_preferences_performance/), on the Person atom itself in Control & Physics 1, and for breasts specifically in the plugin's Physics Params tab (or in F Breast Physics 1 before loading the plugin).

Soft physics is also not supported on a male character.

### Very large breasts bounce too easily

It's possible that hard collider sizes are out of proportion and incorrectly positioned. Hard colliders don't currently scale very well beyond breasts whose automatically estimated mass is 3.000 kg, and breasts that are particularly droopy or non-round in their base shape can also be problematic.

Manually configuring collider sizes and positions in the [Configure Hard Colliders](../breast_hard_colliders/) window can help here.

## Known Issues

| Status | Issue |
|--------|-------|
| TBD (Naturalis) | Hard collider sizes and positions are not adjusted for **Atom Scale** and **World Scale**. It's best to use 1.000 (or close to) for both. |
| TBD (Naturalis) | **World Scale** is not taken into account when calculating physics parameter values. When World Scale is not 1.000, you can try fix physics manually by adjusting offsets for Breast Mass, Fat Collider Radius and Fat Distance Limit. |
| TBD (Naturalis) | Adjusting **Gravity** in the Scene Misc settings is not currently taken into account - the Breast Gravity effect assumes normal gravity. |
| TBD (Naturalis) | Adjusting **Breast Spring/Damper Multiplier** in a clothing item's settings has no effect while TittyMagic is active. Proper support for clothing-dependent breast physics is planned for a future version. |
| TBD (Naturalis) | Hard colliders are unoptimized for female characters with **soft physics disabled**. This could be improved, but for now if you want good collision physics, enable soft physics. |
| No fix | While the plugin hides VaM's original physics settings in the F Breast Physics tabs, it's still possible to make changes to those settings with triggers, by loading presets or programmatically with other plugins. This might cause some physics settings to be incorrect until the next time the plugin calibrates physics. You can trigger calibration manually with the Recalibrate physics button. |
| No fix | Male character physics is limited. The male geometry which does not support soft physics in VaM. Due to this limitation, dynamic morph adjustments are also less sophisticated than with female geometry. |
| TBD (Naturalis) | **Futa** characters lack hard colliders. |

## Plugin Compatibility

As a rule, any other plugin adjusting breast physics settings, breast morphs or breast hard colliders is not compatible with TittyMagic. Depending on what those plugins do, things might still work without errors, and in some cases you might find there to be some kind of synergy between TittyMagic and another plugin. But in general, TittyMagic is designed to work best without other breast adjustment plugins.

### Plugins which adjust non-pose morphs

Plugins which adjust morphs continuously/dynamically can cause issues with TittyMagic, even if the morphs are not specifically breast morphs. As long as the morphs being adjusted are not marked Pose morphs and affect skin vertices in the chest area (even a little bit), TittyMagic will detect changes to those morphs as indications that breast size has changed. When the Auto-Update Mass checkbox is checked (which it is by default), this triggers a calibration which freezes animation for a short duration.

These plugins are still usable with TittyMagic when Auto-Update Mass is unchecked. But to prevent the issue in the first place, other plugins should only animate morphs where `isPoseControl` is set to `true` in the morph .vmi file.

The issue in general concerns any non-pose morph adjustments that affect breast vertices: ones done with transition triggers in the scene, or ones done manually in the Female Morphs tab, etc.

### Plugins which animate bone morphs

Adjustment of morphs which have bone morphs can cause TittyMagic's breast morph animations to vibrate wildly when the physics rate and frame rate are out of sync. Bone morphs should not be animated. In the case of plugins which animate bone morphs, it's recommended that those are replaced.

### Plugins which adjust breast physics

TittyMagic applies physics directly onto the person atom, bypassing the functionality in VAM's F Breast Physics 1 and F Breast Physics 2 tabs. For that reason, the content in those tabs is hidden - but the original physics settings are still exposed to triggers. Adjusting those original physics settings is not recommended while TittyMagic is active.

In addition, some parameters are updated by TittyMagic continuously, and any changes made by other sources to the original physics setting are ineffective. For example, Supa Additional Cloth Physics is not fully compatible for this reason.
