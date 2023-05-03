---
title: "TittyMagic v5.2: Features"
permalink: /docs/tittymagic/v5_2/features
excerpt: ""
toc: true
sidebar:
  nav: docs_tittymagic
parent_url: /docs/tittymagic/v5_2
---

For the most part, features are explained by short info texts in the plugin UI. This page's sections explain things in a bit more detail.

TittyMagic controls or adjusts physics parameters, morphs and colliders automatically. The automatic adjustments are carefully calibrated with each other as well as preferences that can be set in the plugin UI.

* Some physics settings are adjusted only once per calibration, others are also adjusted dynamically with the person's pose or the breast's position.
* Morphs are adjusted based on the movement of the breast away from its calibrated neutral position relative to the person's chest.
* Hard collider sizes and positions are calculated once per calibration, they are currently not dynamically adjusted.
* Every physics parameter can be adjusted with an offset from the automatically calculated value.

>ℹ The plugin calibrates once when initialized, and again after every change that can have an effect on the neutral position of the breast relative to the chest. Calibration freezes the scene for a short duration. The purpose of calibration is to zero the breast pose morphs at the neutral position so that deviation from that position in any direction will result in the correct amount of morphing. In addition, calibration re-applies all breast physics parameters on the person and configures breast gravity and hard colliders for the given breast size and softness.

## Features

[Breast Softness, Quickness and Mass](Breast-Softness,-Quickness-and-Mass)

[Main Joint Physics Parameters](Main-Joint-Physics-Parameters)

[Soft Physics Parameters](Soft-Physics-Parameters)

[Directional Force Morphing](Directional-Force-Morphing)

[Breast Gravity](Breast-Gravity)

[Directional Force Physics](Directional-Force-Physics)

[Breast Hard Colliders](Breast-Hard-Colliders)

[Collider Friction](Collider-Friction)
