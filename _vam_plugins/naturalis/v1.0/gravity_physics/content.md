**Gravity physics** is the adjustment of a few physics parameters based on the angle of the glute or breast joint relative to ground, i.e. relative to the direction of gravity. Additionally, a **Gravity Counterforce** is applied on the Mass parameter to counteract the effect of gravity without reducing mass.

<div class='video-container'>
  <iframe
    src='https://videos.sproutvideo.com/embed/709fdbb31d1decc9f9/311a7482d7cc163a?playerTheme=dark&amp;playerColor=2f3437'
    allowfullscreen
    referrerpolicy='no-referrer-when-downgrade'
    title='Gravity physics'>
  </iframe>
</div>

> **Note:** The Gravity x/y/z settings in Scene Misc are not taken into account. The plugin assumes the default -9.81 m/s² gravity in the y direction.

## Adjusted Physics Parameters

### BootyMagic

| Physics Parameter | Description |
|-------------------|-------------|
| Spring | Spring is at its base value when upright, e.g. when the person is standing up. When leaning back, left, right or when upside down, spring is reduced. When leaning forward (gravity applies towards the hip), spring is increased.
| In/Out Spring | In/Out Spring decreases when leaning forward or back. |
| Up/Down Angle Target | Up/Down Angle Target is negative when upright, causing glutes to get pulled down more heavily, and positive when upside down, causing them to be pulled up more heavily. |
| Left/Right Angle Target | Left/Right Angle Target pulls the glutes sideways towards the direction of gravity. |

### TittyMagic

| Physics Parameter | Description |
|-------------------|-------------|
| Spring | Spring is at its base value when upright, e.g. when the person is standing up. When leaning forward, left, right or when upside down, spring is reduced. When leaning back (gravity applies towards the chest), spring is increased.
| Damper | Damper increases when leaning forward or back, or when the breast rotates sideways inward. |
| In/Out Spring | In/Out Spring decreases when leaning forward or back. |
| Up/Down Angle Target | Up/Down Angle Target is negative when upright, causing breasts to get pulled down more heavily, and positive when upside down, causing them to be pulled up more heavily. |
| Left/Right Angle Target | Left/Right Angle Target pulls the breasts sideways towards the direction of gravity. |

> **Tip: Compensate for droop with morphing**<br/>
> In the Morphs tab, you can compensate for the droop caused by the Up/Down Angle Target with the Gravity Offset Morphing slider. By default, TittyMagic applies roughly the amount of offset morphing that's equivalent to the angle being 0.

## Gravity Counterforce

Gravity counterforce is an extra setting on the Glute Joint Mass and Breast Joint Mass physics parameters. It allows for decoupling mass from weight by applying a force opposite to the direction of gravity. With gravity counterforce, we can reduce the weight of the joint without affecting the inertia supplied by mass. It gives the joint support that reduces droop/sag.

![1_0_gravity_counterforce.jpg](/assets/screens/naturalis/1_0_gravity_counterforce.jpg)

Gravity counterforce is a percentage of the force of gravity, so at 100% it cancels out all of the joint's weight.

In Bootymagic, the counterforce is automatically quite high because the butt doesn't simply hang off of the person's skeleton. In reality, most of the weight of the butt is supported by the surrounding muscles and skin around it, and the counterforce simulates that.

In TittyMagic, there's much less gravity counterforce by default.

## Directional Force Physics

In TittyMagic, the dynamic adjustments of gravity physics are augmented with directional force physics which adjusts a few parameters based on the breast's depth. This is not configurable in the plugin UI, but there are multipliers that are exposed to triggers which can be used to adjust the magnitude of the effect. You can observe the effect in the physics parameter's view in the Physics Params tab when the breast is moving.

| Triggerable Parameter | Description |
|-------------------|-------------|
| `Force Physics Base Multiplier` | Combined multiplier for force physics. |
| `Force Physics Depth In` | Multiplier when the breast is pushed in |
| `Force Physics Depth Out` | Multiplier when the breast is pulled out. |

| Physics Parameter | Description |
|-------------------|-------------|
| Center of Gravity | Center of gravity increases slightly when the breast is pulled out further from the chest, and decreases slightly when the breast is pushed back into the chest. |
| In/Out Damper | In/out damper reduces when the breast is pulled out or pushed. The effect is greater the softer the breasts. |
| Fat Spring | Fat spring increases when the breast is pulled out and decreases when it is pushed in. The effect is greater the softer the breasts. |
