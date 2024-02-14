### Saving Poses Without BootyMagic/TittyMagic Morphs

When saving a pose while Naturalis is active, the pose will contain all of BootyMagic and TittyMagic morphs that have non-zero values. This is usually fine, but when the pose is something you want to include in a var package, that will result Naturalis being unnecessarily referenced by the pose file and the package itself. To prevent this, just disable Naturalis temporarily before saving the pose.

### Cleaning Up Existing Pose Files

For cleaning up Naturalis morphs from pose files, there's a few ways you can go about it:

1. Load the pose, add Naturalis if not present (this zeroes morphs from other Naturalis or TittyMagic vars), then disable Naturalis (this zeroes the morphs from the current var), and finally save and overwrite the pose
2. Load the pose, find the morphs with **BM_** and **TM_** prefixes from the Female Morphs tab, then click **Zero...** and **Shown**
3. Open the pose file in a text editor and remove the morphs with **BM_** and **TM_** prefixes manually
