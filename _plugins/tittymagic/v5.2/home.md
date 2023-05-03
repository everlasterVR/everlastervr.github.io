---
title: "TittyMagic v5.2"
permalink: /docs/tittymagic/v5_2
excerpt: ""
redirect_from:
  - /docs/titty-magic/
  - /docs/tittymagic/
  - /tittymagic/
  - /titty-magic/
sidebar:
  nav: docs_tittymagic
---

Virt-A-Mate Hub: <https://hub.virtamate.com/resources/tittymagic.4067/>

TittyMagic is made obsolete by [Naturalis](/docs/naturalis) which includes BootyMagic and a newer version of TittyMagic in a single package.

## Getting Started

Save the var package to VaM/AddonPackages. In Virt-A-Mate, add the plugin to a Person atom's Plugins tab.

The plugin's default settings are intended to work well in most situations.

Make sure your frame rate is sufficiently high and synchronized with Virt-A-Mate's physics rate - see [Physics Rate and Frame Rate](/docs/general/physics_rate_and_frame_rate). Configure your setup correctly and you will get more out of the plugin!

> **Unpacking the var package is not recommended**. The package includes morphs that are best loaded on demand when the plugin is actually used in the scene. Additionally, unpacking makes it impossible to properly use the plugin as a dependency for any looks or scenes you might release yourself.

## How it works

TittyMagic controls or adjusts physics parameters, morphs and colliders automatically. The automatic adjustments are carefully calibrated with each other as well as preferences that can be set in the plugin UI.

* Some physics settings are adjusted only once per calibration, others are also adjusted dynamically with the person's pose or the breast's position.
* Morphs are adjusted based on the movement of the breast away from its calibrated neutral position relative to the person's chest.
* Hard collider sizes and positions are calculated once per calibration, they are currently not dynamically adjusted.
* Every physics parameter can be adjusted with an offset from the automatically calculated value.

### About calibration

The plugin calibrates once when initialized, and again after every change that can have an effect on the neutral position of the breast relative to the chest. Calibration freezes the scene for a short duration.

The purpose of calibration is to zero the breast pose morphs at the neutral position so that deviation from that position in any direction will result in the correct amount of morphing. In addition, calibration re-applies all breast physics parameters on the person and configures breast gravity and hard colliders for the given breast size and softness.
