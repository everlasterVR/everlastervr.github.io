---
title: "TittyMagic v5.2: Breast Gravity"
permalink: /docs/tittymagic/v5_2/breast_gravity
excerpt: ""
sidebar:
  nav: docs_tittymagic
parent_url: /docs/tittymagic/v5_2
---

Breast Gravity is the adjustment of a few physics parameters based on the angle of the person's chest relative to ground, i.e. relative to the direction of gravity.

![5_2_breast_gravity.png](/assets/screens/tittymagic/5_2_breast_gravity.png)

| Slider | Explanation | Trigger target |
|--------|-------------|----------------|
| Base Multiplier | Multiplies all of the other slider values. | `gravityPhysicsBase` |
| Up | The amount of physics adjustment when in an upside down pose. The effect starts from a horizontal pose and is greatest when upside down perfectly vertically. Up gravity has no effect when in an upright pose. | `gravityPhysicsUp` |
| Down | The amount of physics adjustment when in an upright pose. The effect starts from a horizontal pose and is greatest when upright perfectly vertically. Down gravity has no effect when in an upside down pose. | `gravityPhysicsDown` |
| Forward | The amount of physics adjustment when leaning forward. The effect starts from a vertical pose (upright or upside down) and is greatest when perfectly horizontally flat, facing down. Forward gravity has no effect when leaning back. | `gravityPhysicsForward` |
| Back | The amount of physics adjustment when leaning back. The effect starts from a vertical pose (upright or upside down) and is greatest when perfectly horizontally flat, facing up. Back gravity has no effect when leaning forward. | `gravityPhysicsBack` |
| Left / Right | The amount of physics adjustment when leaning left or right. The effect starts from a pose where there's no sideways roll (e.g. standing up, or flat on the back etc.), and is greatest when perfectly horizontally flat on the left or right side. | `gravityPhysicsLeftRight` |

## Adjusted Physics Parameters

### Spring

Spring is reduced in all directions except down, i.e. spring is highest when in an upright pose. The base amount of spring is optimized for the upright pose, and reducing it lets breasts morph and move more easily when leaning in different directions.

### In/Out Spring

In/out spring decreases with forward and back gravity, i.e. when leaning forward or back. This helps breast depth morphs take effect more easily.

### Up/Down Angle Target

Up/down angle target is negative when upright, causing breasts to get pulled down more heavily, and positive when upside down, causing them to be pulled more heavily.

### Left/Right Angle Target

Left/right angle target is negative when leaning left, causing breasts to get pulled left more heavily, and positive when leaning right, causing both breasts to be pulled right more heavily.
