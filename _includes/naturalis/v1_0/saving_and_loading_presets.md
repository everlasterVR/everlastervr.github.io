Presets specific to TittyMagic and BootyMagic can be saved and loaded in-plugin. The paths for presets are:

|   | Path |
| - | ---- |
| **BootyMagic** | Saves/PluginData/Naturalis/BootyMagicPresets |
| **TittyMagic** | Saves/PluginData/Naturalis/TittyMagicPresets |

For saving and loading overall plugin presets, see [General: Using Plugin Presets](/docs/general/using_plugin_presets/).

### Loading Presets

When loading a preset, the file browser that opens will search for presets in these paths inside AddonPackages as well, and you can see the shortcuts to those packages just like with other resource types in VAM:

![presets_paths.png](/assets/screens/naturalis/presets_paths.png)

> **Tip: Load preset with a trigger**<br/>
> The LoadPresetWithPath triggerable parameter can be used to select a preset path, and then load from selected path with a trigger action.

### Saving Into a New Folder

When saving a new preset, the file browser doesn't have a New Folder button when browsing local directories, but you can save the preset into a new folder by typing the new folder into the save name, and Naturalis will automatically create any folders in the path if they don't exist:

![presets_newfolder.png](/assets/screens/naturalis/presets_newfolder.png)
