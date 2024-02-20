Custom gravity can be configured in the Breast Weight and Glute Weight windows:

![UI_breast_weight_button.jpg](/assets/screens/naturalis/v1_3/UI_breast_weight_button.jpg)

![UI_breast_gravity.jpg](/assets/screens/naturalis/v1_3/UI_breast_gravity.jpg)

Custom gravity applies only to the breast or glute joints. All other joints in the body get the default gravity as defined in Scene Misc. However, note that the Gravity x/y/z settings in Scene Misc are not properly supported yet - best to just use the default scene gravity.

With the multiplier sliders at 1.00, the custom gravity is already different from the default gravity, and different for different rotations of the joint. While this sounds unrealistic, we're already dealing with an unrealistic simulation. The idea is to produce a more visually correct look and behavior especially when the model leans forward or back by applying force to get the joint to move/rotate. Previously, gravity was faked by adjusting the [angle target parameters](../physics_parameters/#joint-physics-parameters) dynamically with the joint angle, but the angle targets applied only to the up-down and right-left directions - with custom gravity, the amount of droop along the forward-back axis can also be manipulated.

The exact calibrated force in different rotations depends on the mass of the joint and on the softness slider value. Use the multipliers to fine tune the amount of gravity in for different angles of the joint, and use the [gravity simulation](../gravity_simulation/) controls to test how things look with your adjustments.
