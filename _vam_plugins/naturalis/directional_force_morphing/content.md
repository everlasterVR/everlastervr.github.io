Directional force morphing is a critical part of the plugin. It's mostly an automated system which determines which morphs get applied and how (strength, curvature, limits etc.) based on breast/glute size and softness.

When soft physics is enabled, morphs get applied when the soft physics mesh deforms. Therefore, reducing the amount of morphing can make the mesh lose volume when there's collision pushing the soft joints. With soft physics disabled, this is less of an issue (mostly because the quality of collision physics in general is poor without soft physics).

Increasing the multipliers can make breasts or glutes expand too much. Generally, extreme changes to the multipliers are not very useful - the multipliers are meant for tweaking the end result.

## BootyMagic

| Slider | Explanation | Trigger target |
|--------|-------------|----------------|
| **Base Multiplier** | Multiplies all of the other slider values. | `Force Morphing Base Multiplier` |
| **Up** | The amount that the glute moves upward when there's a force acting upward along the hip, or when the glute joint rotates and causes the glute mesh to move up relative to the joint. | `Force Morphing Up` |
| **Down** | The amount that the glute moves downward when there's a force acting downward along the hip, or when the glute joint rotates and causes the glute mesh to move down relative to the joint. | `Force Morphing Down` |
| **Depth Out** | The amount that the glute stretches out when there's a force (e.g. gravity) pulling it out from the hip. Currently, collision alone can't cause forward morphing. | `Force Morphing Depth Out` |
| **Depth Out** | The amount that the glute flattens and expands when there's a force (e.g. gravity) pushing it into the hip. | `Force Morphing Depth In` |
| **Sideways In** | The amount that the glute moves and rotates inward towards the middle. A change can be caused by collision, by leaning in the direction of the morphing, or by some other sideways force. | `Force Morphing Sideways In` |
| **Sideways Out** | The amount that the glute moves and rotates outward. A change can be caused by collision, by leaning in the direction of the morphing, or by some other sideways force. | `Force Morphing Sideways Out` |

## TittyMagic

| Slider | Explanation | Trigger target |
|--------|-------------|----------------|
| **Base Multiplier** | Multiplies all of the other slider values. | `Force Morphing Base Multiplier` |
| **Up** |  The amount that the breast shifts, rotates and bulges upward when pushed up, when leaning forward or back, when upside down, or if there's some other upward force. | `Force Morphing Up` |
| **Depth Out** | The amount that the breast stretches out when leaning forward, or if there's some forward-back force causing the distance between the tip and chest to increase. Currently, collision alone can't cause depth out morphing. | `Force Morphing Depth Out` |
| **Depth In** | The amount that the breast compresses and spreads when pushed back, when leaning back, or if there's some forward-back force causing the distance between the tip and chest to decrease. | `Force Morphing Depth In` |
| **Sideways In** | The amount that the breast shifts, rotates and bulges inward towards the center gap. A change can be caused by collision, by leaning in the direction of the morphing, or by some other sideways force. | `Force Morphing Sideways In` |
| **Sideways Out** | The amount that the breast shifts, rotates and bulges outward towards the armpit/ribs. A change can be caused by collision, by leaning in the direction of the morphing, or by some other sideways force. | `Force Morphing Sideways Out` |
