These scripts make it easy to use the latest Naturalis version in a scene without losing the changes you've made to the plugin's parameters.

## Auto-Update Naturalis

![1_1_auto_update.jpg](/assets/screens/naturalis/1_1_auto_update.jpg)

Add to a Person atom which has an existing older Naturalis instance.

The script automatically removes the current Naturalis instance, adds Naturalis.cslist from the var package the script is loaded from, and auto-applies the old instance's plugin parameters.

This process preserves any triggers in the scene targeting Naturalis.

A few things to note:

- Updating from pre-release versions (alphas and betas) is not supported
- Auto-updating *only* swaps the plugin on the person atom itself, it does not touch any preset files, scene files etc.

## Auto-Upgrade From TittyMagic 5

![1_1_auto_upgrade_from_tm5.jpg](/assets/screens/naturalis/1_1_auto_upgrade_from_tm5.jpg)

Add to a Person atom which has TittyMagic 5 on it.

The script automatically removes TittyMagic instance, adds Naturalis.cslist the var package the script is loaded from, and adapts the TittyMagic 5 parameters to Naturalis (see below). Triggers in the scene targeting TittyMagic 5 will be broken and need to be fixed manually.

- Physics parameter offsets are not applied, except for Angle Targets (the default physics values differ too much with Naturalis)
- Like other physics parameter offsets, Mass Offset is not applied (mass calculation is different in Naturalis)
- Quickness is converted from the 0 to 100 range to the -1 to 1 range, with 70 in TittyMagic corresponding to 0 in Naturalis
- Auto-Adjust Gravity Counterforce is enabled after the upgrade (as it is by default in Naturalis)
- Local Distortion Physcis is disabled after the upgrade (even if you have it enabled by default in Naturalis User Preferences)
- The overall gravity physics multipliers are converted to physics parameter specific gravity multipliers
- Everything else should be applied as is - softness, soft physics on/off, self-collision on/off, adaptive friction, nipple erection, gravity offset morphing and hard collider properties

### Supported TittyMagic 5 versions

| Plugin version | Var package | Release date |
| -------------- | ----------- | ------------ |
| v5.2.4         | everlaster.TittyMagic.70.var | Jan 23, 2023 |
| v5.2.3         | everlaster.TittyMagic.69.var | Dec 5, 2022 |
| v5.2.2         | everlaster.TittyMagic.68.var | Dec 3, 2022 |
| v5.2.1         | everlaster.TittyMagic.67.var | Nov 21, 2022 |
| v5.2.0         | everlaster.TittyMagic.66.var | Nov 18, 2022 |
| v5.1.2         | everlaster.TittyMagic.59.var | Sep 21, 2022 |
| v5.1.1         | everlaster.TittyMagic.58.var | Sep 20, 2022 |
| v5.0.6         | everlaster.TittyMagic.51.var | Aug 29, 2022 |
| v5.0.5         | everlaster.TittyMagic.50.var | Aug 23, 2022 |
| v5.0.4         | everlaster.TittyMagic.49.var | Aug 21, 2022 |
| v5.0.3         | everlaster.TittyMagic.48.var | Aug 20, 2022 |
| v5.0.2         | everlaster.TittyMagic.47.var | Aug 18, 2022 |
| v5.0.1         | everlaster.TittyMagic.46.var | Aug 14, 2022 |
| v5.0.0         | everlaster.TittyMagic.45.var | Aug 12, 2022 |
