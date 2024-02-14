### Asymmetric Clothing Support

![1_1_clothing_ui_asymmetric.jpg](/assets/screens/naturalis/1_1_clothing_ui_asymmetric.jpg)

If you toggle off the Symmetric checkbox, the Left and Right buttons become clickable and allow you to switch between the left and right side adjustments. All of the current adjustment values get copied to both sides when you first uncheck Symmetric in the profile, and from there on the adjustments are fully independent for each side.

### Multiple Clothing Layers Support

Multiple items will also each apply their own soft physics adjustments which get combined on any overlapping areas. For example, a bra applying Fat Spring 50% and a shirt applying Fat Spring 10% will mean the area covered by both the bra and the shirt will get the 50% value, while the area covered only by the shirt will get the 10% value. The percentages mean essentially how much the parameter's value is increased from the naked value towards the parameter's maximum value.

### Triggerable Parameters

![1_1_clothing_triggers_ui.jpg](/assets/screens/naturalis/1_1_clothing_triggers_ui.jpg)

All of the adjustments are supported in VAM's triggers system, allowing e.g. other plugins like Timeline to set or animate the values. The parameters are available per item, and are registered for the current plugin session when the item is first enabled in the current plugin session.

In addition, you can trigger the loading of a profile from a specified path, as well as [animate the transition to the target profile](#target-profile-transition).

### Identified Items And Tagging

TittyMagic and BootyMagic identify clothing items based on the Region Tags in the clothing item's user prefs:

![1_1_tags_ui.jpg](/assets/screens/naturalis/1_1_tags_ui.jpg)

The rules are simple.

1. If there are no region tags (built in or set by user), the item will show up in both plugins.
2. If "full body" or "hip" is checked, the item always shows up in BootyMagic. If neither of these is checked, but any other region is checked, the item will not show up in BootyMagic.
3. If "full body" or "torso" is checked, the item always shows up in TittyMagic. If neither of these is checked, but any other region is checked, the item will not show up in TittyMagic.

As an example, the Neo Ayane Dress has built in tags for hip and torso so it shows up in both plugins.

Another example: some headwear item like sunglasses that is correctly tagged "head", and doesn't have any of the "full body", "hip" or "torso" tags, will not show up in either plugin.

You can easily use this to ensure that the right items are showing up. Anything that's missing - just give it the "full body", "hip" or "torso" tag. Anything that's showing up incorrectly because it's missing a region tag, just give it the correct tag.

### Using Built-In Profiles As Templates

Built-in clothing items have default profiles included in the plugin var:

![1_1_clothing_builtin_profiles_ui.jpg](/assets/screens/naturalis/1_1_clothing_builtin_profiles_ui.jpg)

These profiles are always available to be loaded on any item, allowing you to use e.g. the adjustment profile for Alphakini Bra as a starting point for a custom bra. However, the [covered soft physics area](#soft-physics-on-covered-areas) is not applied from the profile in this case, you'll need to map the coverage for the custom item separately.
