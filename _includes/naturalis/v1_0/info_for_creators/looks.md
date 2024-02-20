### Adjusting Person Morphs

Naturalis adds a **Pause morph updates** toggle to the Female Morphs and Male Morphs tabs. This toggle is on by default. It prevents the plugin from applying directional force morphs, allowing you to see how the base morphs you're adjusting actually affect the shape.

#### About Optimal Morphs (TittyMagic)

The dynamic force morphing system is designed around a base breast shape that is fairly round and natural, and not drooping heavily. Using morphs for the base shape that have gravity "built in" to the shape can result in unnatural-looking shapes when the model is rotated.

For example, the built in *Breasts Shape 01* to *Breasts Shape 08* morphs all expand heavily downward. When these morphs are used and the person is rotated upside down, there's still going to be a downward curve to the shape.

#### About Maximum Size

Physics parameters, morphs and collider properties are only designed to scale up to the size limit that is defined by the maximum automatically calculated glute joint mass or breast joint mass.

These upper limits allow for breasts and glutes that would be considered extremely large in reality, but it does currently limit what kinds of characters are suitable for use with Naturalis.

You can go beyond this size limit, but the resulting behaviour might be problematic. The biggest issue is with breast hard colliders which get scaled out of proportion, so for breasts larger than the upper limit, you'll want to [manually adjust the hard collider properties](../hard_colliders/).

### Including Presets In A Look Release

Since Naturalis allows for [saving presets for BootyMagic and TittyMagic](../saving_and_loading_presets/), you can include those presets in your own add-on packages.

The correct way to do this is like with any other VAM resource - create a new folder in the resource type's  path with your author name, and another folder inside that with the resource name, then put the files in there. Then add the resource's folder when creating the package.

For example, a TittyMagic preset called "extra_soft" for a look "PrettyModel" by creator "VamAuthor" should be saved to

```
Saves/PluginData/Naturalis/TittyMagicPresets/VamAuthor/PrettyModel/extra_soft.json
```

And when packaging the look, VamAuthor would include the directory *Saves/PluginData/Naturalis/TittyMagicPresets/VamAuthor/PrettyModel* in the package.
