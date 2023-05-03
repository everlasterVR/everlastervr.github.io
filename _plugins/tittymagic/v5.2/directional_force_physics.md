---
title: "TittyMagic v5.2: Directional Force Physics"
permalink: /docs/tittymagic/v5_2/directional_force_physics
excerpt: ""
sidebar:
  nav: docs_tittymagic
parent_url: /docs/tittymagic/v5_2
---

Some physics settings are adjusted dynamically when the breast's depth changes.

This feature is currently not configurable in the plugin UI, although there are multipliers that are exposed to triggers which could be used to adjust the magnitude of the effect. You can observe the effect in the physics parameter's view in the Physics Params tab when the breast is moving.

| Triggerable parameter |
|-----------------------|
| `forceMorphingBase`   |
| `forcePhysicsForward` |
| `forcePhysicsBack`    |

### Center of Gravity

Center of gravity increases slightly when the breast is pulled out further from the chest, and decreases slightly when the breast is pushed back into the chest.

### In/Out Damper

In/out damper reduces when the breast is pulled out or pushed. The effect is greater the softer the breasts.

### Fat Spring

Fat spring increases when the breast is pulled out and decreases when it is pushed in. The effect is greater the softer the breasts.
