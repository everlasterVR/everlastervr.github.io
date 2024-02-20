Calibration results are saved to disk in order to speed up the process whenever a result matching the current model's glute and breast shape is found.

When a mathcing result is found, the plugin still needs to freeze the scene and load the calibration pose briefly. Apart from that, matching the result is done based on relevant plugin parameters and other settings, so you will accumulate cached results for all kinds of different combinations of plugin parameters and models.

A single cached result is about 80 KB of data combined for BootyMagic and TittyMagic, which means 1 GB of disk space will fit about 12500 unique calibration results.

Calibration results are stored in **Custom\PluginData\everlaster\Naturalis\CalibrationCache**.

If there's any visible issue with the plugin's behavior and you suspect it might be due to some kind of faulty cached result, you can trigger a full calibration using the **Calibrate Now Without Cache** button in the user preferences. You can also clear the cache or disable the feature altogether in the user preferences.
