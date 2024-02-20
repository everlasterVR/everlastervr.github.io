Local Distortion Physics enables soft physics to react to local skin **compression** and **stretching**. It changes the values of soft physics parameters on individual soft joints based on the distances of those joints from their neighboring joints. When the distance decreases, the mesh is compressing at that joint, and when the distance increases, the mesh is stretching at that joint - in other words, there's local distortion in the mesh.

This video from v1.0 provides an overview of the feature in practice:

<div class='video-container'>
  <iframe
    src='https://videos.sproutvideo.com/embed/ac9fdbb31b1de6c125/34148bf0d70df5e6?playerTheme=dark&amp;playerColor=2f3437'
    allowfullscreen
    referrerpolicy='no-referrer-when-downgrade'
    title='Local distortion physics'>
  </iframe>
</div>

Each supported parameter has the following sliders:

![UI_local_distortion_physics.jpg](/assets/screens/naturalis/v1_3/UI_local_distortion_physics.jpg)

| Term | Definition |
| ---- | ---------- |
| **Effect** | How much the parameter's value changes (per unit of distance) when a joint's distance from its neighboring joints decreases (compression) or increases (stretching). A positive value means the parameter's value will increase, a negative value means the parameter's value will decrease. |
| **Sensitivity** | The ease at which the effect is applied when there's only a small amount of change in distance. A value of 1 means the effect is applied linearly: the parameter's value will change proportionally with distance. A value of 0 means the effect is applied along a steep S-curve, making the change noticeable only when there's a very significant deformation in the mesh. |

### Default Settings

The default settings are mostly a result of experimentation. There's a very wide range of possible physics behaviours you can achieve by adjusting the LDP parameters along with the basic offsets and gradient adjustments (see [Physics Customization](../physics_customization/).

| Physics Parameter | Description |
|-------------------|-------------|
| Fat Spring | Increases with both stretching and compression. The idea is simulate how the mesh resists changes in shape beyond a certain limit. |
| Fat Damper | Decreases with both compression and stretching. This slightly exaggerates the jiggle physics in animations, but in a way that prevents the joints from oscillating too much when in the calibrated "resting" shape. |
| Fat Mass | Increases with compression and decreases with stretching. The idea is to facilitate "rippling" of the physics mesh. |
| Fat Distance Limit | No effect by default. |
| Fat Pressure Multiplier | No effect by default. |
| Fat Collider Radius | Increases with compression and stretching. This helps reduce clipping through the gaps between colliders. |
| Fat Collider Depth | Increases with stretching. This makes colliding objects bury themselves in the mesh the more force is being applied that stretches out the mesh. |
| Fat Collider Friction | Increases slightly with stretching in order to reduce slipping when an object is pushing against the mesh. |
