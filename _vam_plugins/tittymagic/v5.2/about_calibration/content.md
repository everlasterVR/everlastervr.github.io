The plugin calibrates once when initialized, and again after every change that can have an effect on the neutral position of the breast relative to the chest.

The purpose of calibration is to zero the breast pose morphs at the neutral position so that deviation from that position in any direction will result in the correct amount of morphing. In addition, calibration re-applies all breast physics parameters on the person and configures breast gravity and hard colliders for the given breast size and softness.

As an example, if you increase spring, breasts will hang less, so a calibration is needed to zero adjustments around their new neutral position.

Calibration freezes the scene for a short duration.

## Calibration Options

These options are accessible from the `Show Calibration Options...` button in the main UI.

![5_2_calibration_options.png](/assets/screens/tittymagic/5_2_calibration_options.png)

Generally, you don't need to do anything here, the defaults work best 99% of the time.

The Pause Scene Animation is an alternative to freezing the entire scene, it can be checked if the Freeze Motion/Sound toggle is unchecked. Pausing scene animation during calibration allows audio sources in the scene to continue playing which is useful for scenes where loading new looks is part of the "game play".

The Disable Breast Collision toggle is offered just in case, there might be some edge cases where it's useful to uncheck it.
