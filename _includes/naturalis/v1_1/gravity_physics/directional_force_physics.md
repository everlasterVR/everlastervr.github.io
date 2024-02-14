The dynamic adjustments of gravity physics are augmented with directional force physics which adjusts a few parameters based on the joint's depth. This is not configurable in the plugin UI, but there are multipliers that are exposed to triggers which can be used to adjust the magnitude of the effect. You can see the effect in the physics parameter's view in the Physics tab when the joint is moving.

| Triggerable Parameter | Description |
|-------------------|-------------|
| `Force Physics Base Multiplier` | Combined multiplier for force physics. |
| `Force Physics Depth In` | Multiplier when the joint is pushed in |
| `Force Physics Depth Out` | Multiplier when the joint is pulled out. |

| Physics Parameter | Description |
|-------------------|-------------|
| Center of Gravity | Center of gravity increases slightly when the joint is pulled out, and decreases slightly when the joint is pushed in. |
| In/Out Damper | In/out damper reduces when the joint is pulled or pushed. The effect is greater the higher the softness. |
