---
title: "TittyMagic v5.2: Collider Friction"
permalink: /docs/tittymagic/v5_2/collider_friction
excerpt: ""
sidebar:
  nav: docs_tittymagic
parent_url: /docs/tittymagic/v5_2
---

All colliders, including soft physics colliders, have a friction setting that can be adjusted programmatically between 0 and 1. By default in Virt-A-Mate, colliders have a friction of 0.600.

Low collider friction can be used to make breasts slippery to collision with hands, other parts of the body or other objects. High collider friction will make breasts more sticky.

## Configuration

TittyMagic 5.1 modifies the person atom's Skin Materials 2 tab with collider friction settings. This view can be also accessed from the `Configure Collider Friction...` button in the main screen.

![5_2_collider_friction.png](/assets/screens/tittymagic/5_2_collider_friction.png)

`Adaptive Friction` makes collider friction depend on skin glossiness, as explained in the screenshot.

`Friction Offset` can be used to override the default friction, or to change the automatically calculated value when Adaptive Friction is enabled.
