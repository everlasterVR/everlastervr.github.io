All of the adjustments to shape and physics are stored in the profile file rather than in the plugin's own data, i.e. they do not save with the scene. But the currently selected profile, if saved to file, will be referenced in the plugin data and be auto-applied when the scene is loaded. This means you **must** save the profile in order to not lose your changes!

### Profile Locations

Profiles are saved to the following folders:

```
BootyMagic: VaM/Saves/PluginData/Naturalis/HipClothingProfiles/<Author>/<Item>
TittyMagic: VaM/Saves/PluginData/Naturalis/ChestClothingProfiles/<Author>/<Item>
```

### Default Profile Loading Priority

The plugin will automatically apply the default profile for an item when the item is first enabled. The default profile can exist in a few different locations:

1. Default.json in the local folder (see locations above) takes first priority
2. If the above local default profile doesn't exist
    a. and the item is a built-in item, the plugin will load the built-in item's profile from the current Naturalis var package
    b. and the item is a custom var packaged item, the plugin will look for a default profile in the item's var package
