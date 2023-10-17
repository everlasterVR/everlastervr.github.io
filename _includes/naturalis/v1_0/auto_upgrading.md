Starting with Naturalis v1.0.1 (everlaster.Naturalis.14.var), you can auto-upgrade from TittyMagic 5.x or Naturalis v1.0.0 to the version in the var. This makes it easy to update the version without losing the changes you've made to the plugin parameters.

## How-To

If you have TittyMagic v5.x or an earlier version of Naturalis on the Person atom, simply add a new plugin, select the latest Naturalis var package, and add the AutoUpgrade.cs instead of the usual cslist:

![auto_upgrade.jpg](/assets/screens/naturalis/auto_upgrade.jpg)

The upgrade proceeds automatically from there.

A few things to note:

- Upgrading from pre-release versions (alphas and betas) is not supported.
- The auto-upgrade *only* swaps the plugin on the person atom itself, it does not touch any preset files, scene files etc.

> **Info: How it works**<br/>
> The script grabs plugin parameters from the existing plugin and converts them to parameters that work in the version of Naturalis that's in the var package you load AutoUpgrade from. The script then removes the existing plugin, adds Naturalis from the var, and loads the converted parameters into the new plugin.

## About Upgrading From TittyMagic 5

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
