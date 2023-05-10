## Looks

### Adjusting Person Morphs

Naturalis adds a **Pause morph updates** toggle to the Female Morphs and Male Morphs tabs. This toggle is on by default. It prevents the plugin from applying directional force morphs, allowing you to see how the base morphs you're adjusting actually affect the shape.

*Person morphs tutorial video coming Soon™.*

#### About Optimal Morphs (TittyMagic)

The dynamic force morphing system is designed around a base breast shape that is fairly round and natural, and not drooping heavily. Using morphs for the base shape that have gravity "built in" to the shape can result in unnatural-looking shapes when the model is rotated.

For example, the built in *Breasts Shape 01* to *Breasts Shape 08* morphs all expand heavily downward. When these morphs are used and the person is rotated upside down, there's still going to be a downward curve to the shape.

#### About Maximum Size

Physics parameters, morphs and collider properties are only designed to scale up to the size limit that is defined by the maximum automatically calculated glute joint mass or breast joint mass.

These upper limits allow for breasts and glutes that would be considered extremely large in reality, but it does currently limit what kinds of characters are suitable for use with Naturalis.

You can go beyond this size limit, but the resulting behaviour might be problematic. The biggest issue is with breast hard colliders which get scaled out of proportion, so for breasts larger than the upper limit, you'll want to [manually adjust the hard collider properties](/docs/naturalis/v1_0/optimizing_collision_physics/).

### Including Presets In a Look Release

Since Naturalis allows for [saving presets for BootyMagic and TittyMagic](/docs/naturalis/v1_0/saving_and_loading_presets/), you can include those presets in your own add-on packages.

The correct way to do this is like with any other VAM resource - create a new folder in the resource type's  path with your author name, and another folder inside that with the resource name, then put the files in there. Then add the resource's folder when creating the package.

For example, a TittyMagic preset called "extra_soft" for a look "PrettyGirl" by creator "VamAuthor" should be saved to

```
Saves/PluginData/Naturalis/TittyMagicPresets/VamAuthor/PrettyGirl/extra_soft.json
```

And when packaging the look, VamAuthor would include the directory *Saves/PluginData/Naturalis/TittyMagicPresets/VamAuthor/PrettyGirl* in the package.

## Poses

### Saving Poses Without BootyMagic/TittyMagic Morphs

When saving a pose while Naturalis is active, the pose will contain all of BootyMagic and TittyMagic morphs that have non-zero values. This is usually fine, but when the pose is something you want to include in a var package, that will result Naturalis being unnecessarily referenced by the pose file and the package itself. To prevent this, just disable Naturalis temporarily before saving the pose.

### Cleaning Up Existing Pose Files

For cleaning up Naturalis morphs from pose files, there's a few ways you can go about it:

1. Load the pose, add Naturalis if not present, then disable Naturalis and save and overwrite the pose
2. Load the pose, find the morphs with **BM_** and **TM_** prefixes from the Female Morphs tab, then click **Zero...** and **Shown**
3. Open the pose file in a text editor and remove the morphs with **BM_** and **TM_** prefixes manually

## Scenes

### Audio Playback During Calibration

By default, the scene is frozen during calibration, which stops all motion and sound. In some scenes, you might want to calibrate mid-scene while audio is playing. To do this:

1. Go to the Calibration Options section of Naturalis User Preferences from either TittyMagic or BootyMagic main UI
2. Uncheck the **Calibration: Freeze Motion/Sound** toggle, and check the **Calibration: Pause Scene Animation** toggle:

![1_0_calibration_options.jpg](/assets/screens/naturalis/1_0_calibration_options.jpg)

Pausing scene animation during calibration allows audio sources in the scene to continue playing, but any animation other than scene animation (e.g. Timeline) must be stopped manually (i.e. with triggers in the scene) for the duration of the calibration, otherwise the calibration result will be incorrect.

### Applying Changes That Require Calibration

One way to do this is to add a calibration button to the scene that the user can click. The button should be set to trigger the **Calibrate** action on BootyMagic or TittyMagic.

To ensure calibration happens automatically when needed during a scene's playback, use the **Calibrate On Next Pending** triggerable action. If setup to trigger after a change that e.g. changes the size of breasts, the user won't have to manually click a button in the scene.

The Calibrate On Next Pending action sets a flag that causes calibration to trigger automatically if any change puts calibration to pending. The flag is unset during calibration, i.e. further changes won't trigger calibration automatically.
