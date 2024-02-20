Mesh pressure expands the soft physics mesh as soft joints are pushed towards the center of the mesh. It automatically compensates for volume loss in collisions by physically expanding the soft physics mesh by an appropriate amount.

For a demo of the effect, see the video in the [v1.3-beta1 update post on the Hub](https://hub.virtamate.com/resources/naturalis.33647/update/58270/).

Currently the only way to customize mesh pressure is with the Fat Pressure Multiplier parameter:

![UI_fat_pressure_multiplier_button.jpg](/assets/screens/naturalis/v1_3/UI_fat_pressure_multiplier_button.jpg)

![UI_fat_pressure_multiplier.jpg](/assets/screens/naturalis/v1_3/UI_fat_pressure_multiplier.jpg)

It is a multiplier on the amount of pressure force (and therefore amount of expansion) that soft physics joints can receive. By default, the parameter's [value gradient](../physics_customization/#soft-physics-gradient) is set up so that soft physics joints near the center of the area expand more easily, while those around the outer edge expand much less. The low outer multiplier ensures that the pressure force doesn't create a sharp edge between the area covered by the soft physics mesh and the skin just outside that area.
