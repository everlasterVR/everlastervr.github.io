If you have TittyMagic v5.x or an earlier version of Naturalis on the Person atom, simply add a new plugin, select the latest Naturalis var package, and add the AutoUpgrade.cs instead of the usual cslist:

![auto_upgrade.jpg](/assets/screens/naturalis/auto_upgrade.jpg)

The upgrade proceeds automatically from there.

A few things to note:

- Upgrading from pre-release versions (alphas and betas) is not supported.
- The auto-upgrade *only* swaps the plugin on the person atom itself, it does not touch any preset files, scene files etc.

> **Info: How it works**<br/>
> The script grabs plugin parameters from the existing plugin and converts them to parameters that work in the version of Naturalis that's in the var package you load AutoUpgrade from. The script then removes the existing plugin, adds Naturalis from the var, and loads the converted parameters into the new plugin.
