## Clothing

### Default Clothing Profile For Custom Item

Clothing creators can include a default clothing adjustment profile for their clothing items inside the item's var package. This profile will be automatically applied when users use the clothing item. (Naturalis is not required as a dependency of the clothing var package, but is obviously required for the profile to be loaded.) See [Profile Locations](../clothing/#profile-locations).

In addition, clothing creators should ensure their items are correctly tagged to ensure they are detected correctly by the plugin. See [Identified Items And Tagging](../clothing/#identified-items-and-tagging).

## Looks

### Adjusting Person Morphs

Naturalis adds a **Pause morph updates** toggle to the Female Morphs and Male Morphs tabs. This toggle is on by default. It prevents the plugin from applying directional force morphs, allowing you to see how the base morphs you're adjusting actually affect the shape.

#### About Optimal Morphs (TittyMagic)

The dynamic force morphing system is designed around a base breast shape that is fairly round and natural, and not drooping heavily. Using morphs for the base shape that have gravity "built in" to the shape can result in unnatural-looking shapes when the model is rotated.

For example, the built in *Breasts Shape 01* to *Breasts Shape 08* morphs all expand heavily downward. When these morphs are used and the person is rotated upside down, there's still going to be a downward curve to the shape.

#### About Maximum Size

Physics parameters and morphs are only designed to scale up to a size that corresponds to a mass of 3 kg when mass is calculated automatically by the plugin.

This upper limit allows for breasts and glutes that would be considered extremely large in reality, but it does still limit what kinds of characters are suitable for use with Naturalis. You can go beyond this size limit, but results may vary.

### Including Presets In a Look Release

Since Naturalis allows for [saving presets for BootyMagic and TittyMagic](../saving_and_loading_presets/), you can include those presets in your own add-on packages.

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

1. Load the pose, add Naturalis if not present (this zeroes morphs from other Naturalis or TittyMagic vars), then disable Naturalis (this zeroes the morphs from the current var), and finally save and overwrite the pose
2. Load the pose, find the morphs with **BM_** and **TM_** prefixes from the Female Morphs tab, then click **Zero...** and **Shown**
3. Open the pose file in a text editor and remove the morphs with **BM_** and **TM_** prefixes manually

## Scenes

### Instant Calibration on Scene Load

Naturalis saves calibration data to the scene file so that when the scene is loaded, the calibration goes through instantly without interfering with scene playback and the person's pose. However, this only works if **calibration is not pending** when you save the scene.

### Ensuring Consistent Poses When Calibrating

Since calibrating loads a pose and disables collision temporarily, another character colliding with the plugin's person atom will stop colliding with it for the duration of calibration. To ensure that the character's pose is aligned correctly when the calibration finishes, make sure the pose isn't too dependent on collision with the plugin's person atom. For example, use Position On and Rotation On states to keep the necessary controllers in their intended place even when there's no collision with the plugin's person atom.

On a related note, any kind of trigger that loads a pose should not be triggered while calibration is ongoing. At the end of calibration, the pose will just be reset back to what it was before calibration anyway. In addition, loading a pose during calibration could interefere with the calibration result.

### Audio Playback During Calibration

By default, the scene is frozen during calibration, which stops all motion and sound. In some scenes, you might want to calibrate mid-scene while audio is playing. To do this:

1. Go to the Plugin Settings section of [Naturalis User Preferences](../user_preferences) from either TittyMagic or BootyMagic main UI
2. Uncheck the **Calibration: Freeze Motion/Sound** toggle, and check the **Calibration: Pause Scene Animation** toggle

Pausing scene animation during calibration allows audio sources in the scene to continue playing, but any animation other than scene animation (e.g. Timeline) must be stopped manually (i.e. with triggers in the scene) for the duration of the calibration, otherwise the calibration result will be incorrect.

### Applying Changes That Require Calibration

One way to do this is to add a calibration button to the scene that the user can click. The button should be set to trigger the **Calibrate** action on BootyMagic or TittyMagic.

To ensure calibration happens automatically when needed during a scene's playback, use the **Calibrate On Next Pending** triggerable action. If setup to trigger after a change that e.g. changes the size of breasts, the user won't have to manually click a button in the scene.

The Calibrate On Next Pending action sets a flag that causes calibration to trigger automatically if any change puts calibration to pending. The flag is unset during calibration, i.e. further changes won't trigger calibration automatically.
