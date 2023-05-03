---
title: "TittyMagic v5.2: Directional Force Morphing"
permalink: /docs/tittymagic/v5_2/directional_force_morphing
excerpt: ""
sidebar:
  nav: docs_tittymagic
parent_url: /docs/tittymagic/v5_2
---

Directional force morphing applies morphs based on the direction that the breast moves. The amount of adjustment for each morph depends on breast mass, softness, how much the the breast's position deviates from its neutral position, and on the multipliers in the Morph Multipliers tab.

![5_2_directional_force_morphing.png](/assets/screens/tittymagic/5_2_directional_force_morphing.png)

Note that educing the amount of morphing can make breasts lose volume when there's collision. Increasing the multipliers too much can make breasts "floaty" and return too slowly to their normal shape. Generally, significant changes to the multipliers are not very useful, the multipliers are more for tweaking the end result.

| Slider | Explanation | Trigger target |
|--------|-------------|----------------|
| Base Multiplier | Multiplies all of the other slider values. | `forceMorphingBase` |
| Up |  The amount that breasts shift, rotate and bulge upward when pushed up, when leaning forward or back, when upside down, or if there's some other upward force. | `forceMorphingUp` |
| Down | The amount that breasts bulge down - this effect is quite small since the breast base shape has gravity "built in". | `forceMorphingDown` |
| Forward | The amount that breasts stretch out when leaning forward, or if there's some forward-back force causing the distance between the tip and chest to increase. Currently, collision alone can't cause forward morphing. | `forceMorphingForward` |
| Back | The amount that breasts compress when pushed back, when leaning back, or if there's some forward-back force causing the distance between the tip and chest to decrease. | `forceMorphingBack` |
| Left / Right | The amount that breasts shift, rotate and bulge sideways both outwards from and inwards towards the center gap. As with up/down forces, change can be caused by collision, by leaning in the direction of the morphing, or by some other sideways force. | `forceMorphingLeftRight` |
