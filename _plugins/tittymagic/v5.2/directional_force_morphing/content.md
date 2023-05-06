Directional Force Morphing applies morphs based on the direction that the breast moves. The amount of adjustment for each morph depends on breast mass, softness, how much the the breast's position deviates from its neutral position, and on the multipliers in the Morph Multipliers tab.

![5_2_directional_force_morphing.png](/assets/screens/tittymagic/5_2_directional_force_morphing.png)

Reducing the amount of morphing can make breasts lose volume when there's collision. Similarly, increasing the multipliers can make breasts expand in volume too much, and can also make them too slow to return to their normal shape (because of how morphing feeds back into itself). Generally, significant changes to the multipliers are not very useful - the multipliers are more for tweaking the end result.

| Slider | Explanation | Trigger target |
|--------|-------------|----------------|
| Base Multiplier | Multiplies all of the other slider values. | `forceMorphingBase` |
| Up |  The amount that breasts shift, rotate and bulge upward when pushed up, when leaning forward or back, when upside down, or if there's some other upward force. | `forceMorphingUp` |
| Down | The amount that breasts bulge down - this effect is quite small since the breast base shape has gravity "built in". | `forceMorphingDown` |
| Forward | The amount that breasts stretch out when leaning forward, or if there's some forward-back force causing the distance between the tip and chest to increase. Currently, collision alone can't cause forward morphing. | `forceMorphingForward` |
| Back | The amount that breasts compress when pushed back, when leaning back, or if there's some forward-back force causing the distance between the tip and chest to decrease. | `forceMorphingBack` |
| Sideways In | The amount that breasts shift, rotate and bulge inward towards the center gap. Change can be caused by collision, by leaning in the direction of the morphing, or by some other sideways force. | `forceMorphingSidewaysIn` |
| Sideways Out | The amount that breasts shift, rotate and bulge outward towards the armpit/ribs. Change can be caused by collision, by leaning in the direction of the morphing, or by some other sideways force. | `forceMorphingSidewaysOut` |
