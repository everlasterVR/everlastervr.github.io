Gravity Physics is the adjustment of a few physics parameters based on the angle of the glute or breast joint relative to ground, i.e. relative to the direction of gravity. In addition, the custom gravity force adds a different amount of weight to the joint in different poses.

This video from v1.0 provides an overview of the feature in practice:

<div class='video-container'>
  <iframe
    src='https://videos.sproutvideo.com/embed/709fdbb31d1decc9f9/311a7482d7cc163a?playerTheme=dark&amp;playerColor=2f3437'
    allowfullscreen
    referrerpolicy='no-referrer-when-downgrade'
    title='Gravity physics'>
  </iframe>
</div>

> **Note:** The Gravity x/y/z settings in Scene Misc are not taken into account. The plugin assumes the default y = -9.81 m/s² gravity.

**Adjusted Physics Parameters (BootyMagic):**

| Physics Parameter | Description |
|-------------------|-------------|
| Rotation Spring | Spring is at its base value when upright, e.g. when the person is standing up. When leaning back, left, right or when upside down, spring is reduced. When leaning forward (gravity applies towards the hip), spring is increased. |
| In/Out Spring | In/Out Spring decreases when leaning forward or back. |
| Up/Down Angle Target | Up/Down Angle Target deacreases when upright and increases when upside down. |
| Left/Right Angle Target | Left/Right Angle Target pulls the glutes sideways towards the direction of gravity. |

**Adjusted Physics Parameters (TittyMagic):**

| Physics Parameter | Description |
|-------------------|-------------|
| Rotation Damper | Damper increases when leaning forward or back, or when the breast rotates sideways inward. |
| Right/Left Spring | Right/Left Spring increases when leaning to the side, this is to prevent weird behaviour (too loose and messes up morphing) in that angle. |
| In/Out Spring | In/Out Spring decreases when leaning forward or back. |
| Up/Down Angle Target | Up/Down Angle Target negative when upright, causing breasts to get pulled down more heavily, and zero when upside down. |
| Left/Right Angle Target | Left/Right Angle Target pulls the breasts sideways towards the direction of gravity. |
