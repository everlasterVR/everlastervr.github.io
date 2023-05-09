Presets for individual plugins can be saved and loaded using VAM's Plugin Presets functionality. However, since it's designed for managing the person atom's plugins as a group, the process for both saving and loading an individual plugin's preset is a bit awkward.

> **Note:** This process is not needed with plugins which have a built-in preset system, e.g. [Naturalis](/docs/naturalis).

To save a preset:

1. Remove all other plugins from the Person atom
2. With only Plugin A present, save a new plugin preset in the Plugin Presets tab
3. Add the other plugins back

To load a preset:

1. Remove any existing instance of Plugin A from the person atom
2. In the Plugin Presets tab, check "Use Merge Load"
3. Load the preset containing only Plugin A

If you have a bunch of other plugins on the person atom, you can save them as their own preset to make it easier to add them back after saving an individual plugin preset.
