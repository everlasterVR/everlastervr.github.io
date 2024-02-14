### Instant Calibration on Scene Load

Naturalis saves calibration data to the scene file so that when the scene is loaded, the calibration goes through instantly without interfering with scene playback and the person's pose. However, this only works if **calibration is not pending** when you save the scene.

### Ensuring Consistent Poses When Calibrating

Since calibrating loads a pose and disables collision temporarily, another character colliding with the plugin's person atom will stop colliding with it for the duration of calibration. To ensure that the character's pose is aligned correctly when the calibration finishes, make sure the pose isn't too dependent on collision with the plugin's person atom. For example, use Position On and Rotation On states to keep the necessary controllers in their intended place even when there's no collision with the plugin's person atom.

On a related note, any kind of trigger that loads a pose should not be triggered while calibration is ongoing. At the end of calibration, the pose will just be reset back to what it was before calibration anyway. In addition, loading a pose during calibration could interefere with the calibration result.

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
