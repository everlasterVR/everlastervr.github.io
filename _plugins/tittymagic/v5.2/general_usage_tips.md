---
title: "TittyMagic v5.2: General Usage Tips"
permalink: /docs/tittymagic/v5_2/general_usage_tips
excerpt: ""
sidebar:
  nav: docs_tittymagic
parent_url: /docs/tittymagic/v5_2
---

## Breast morphs to use with the plugin

While you can use any breast morphs with TittyMagic, the plugin doesn't know how to compensate for morphs that expand directionally. A lot of breast morphs expand downward - they have "gravity" built in to the morph. For example, all of the Breasts Shape 01 to Breasts Shape 08 morphs expand mostly downward. Generally, it's best to use morphs that expand more equally in all directions, so that breasts will also look better when the character is leaning in different directions or upside down. Examples: Breasts Size, Breast large, diameter morphs, negative values on breast size reduction morphs.

Similarly to downward expanding size morphs, there are various breast pose morphs, and morphs like Breast sag 1, Breast sag 2 and Breasts natural that apply "gravity" to breasts, but only in the downward direction. Using too much of these morphs might produce an unrealistic shape in a non-upright pose.

## Saving Pose Presets

When saving a pose preset with Store Pose Morphs In Pose enabled, you might want to disable the plugin before saving, then enable again after saving. That way, the preset will not be contaminated with TittyMagic's morphs, preventing it from applying those morphs on load, and preventing TittyMagic from being a dependency on the pose preset if you put the preset into a var package.
