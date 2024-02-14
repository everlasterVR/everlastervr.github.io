![1_1_auto_upgrade_from_tm5.jpg](/assets/screens/naturalis/1_1_auto_upgrade_from_tm5.jpg)

Add to a Person atom which has TittyMagic 5 on it.

The script automatically removes TittyMagic instance, adds Naturalis.cslist the var package the script is loaded from, and adapts the TittyMagic 5 parameters to Naturalis (see below). Triggers in the scene targeting TittyMagic 5 will be broken and need to be fixed manually.

- Physics parameter offsets are not applied, except for Angle Targets (the default physics values differ too much with Naturalis)
- Like other physics parameter offsets, Mass Offset is not applied (mass calculation is different in Naturalis)
- Quickness is converted from the 0 to 100 range to the -1 to 1 range, with 70 in TittyMagic corresponding to 0 in Naturalis
- Local Distortion Physics is disabled after the upgrade (even if you have it enabled by default in Naturalis User Preferences)
- The overall gravity physics multipliers are converted to physics parameter specific gravity multipliers
- Everything else should be applied as is - softness, soft physics on/off, self-collision on/off, adaptive friction, nipple erection, gravity offset morphing and hard collider properties

{% include naturalis/v1_0/auto_upgrading/supported_tittymagic_5_versions.md %}
