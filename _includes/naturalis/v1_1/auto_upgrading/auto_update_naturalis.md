![1_1_auto_update.jpg](/assets/screens/naturalis/1_1_auto_update.jpg)

Add to a Person atom which has an existing older Naturalis instance.

The script automatically removes the current Naturalis instance, adds Naturalis.cslist from the var package the script is loaded from, and auto-applies the old instance's plugin parameters.

This process preserves any triggers in the scene targeting Naturalis.

A few things to note:

- Updating from pre-release versions (alphas and betas) is not supported
- Auto-updating *only* swaps the plugin on the person atom itself, it does not touch any preset files, scene files etc.
