Directional force morphing is a critical part of the plugin. It's mostly an automated system which determines which morphs get applied and how (strength, curvature, limits etc.) based on glute/breast size and softness.

When soft physics is enabled, morphs get applied when the soft physics mesh deforms. Therefore, reducing the amount of morphing can make the mesh lose volume when there's collision pushing the soft joints. With soft physics disabled, this is less of an issue (mostly because the quality of collision physics in general is poor without soft physics).

Increasing the multipliers can make breasts or glutes expand too much. Generally, extreme changes to the multipliers are not very useful - the multipliers are meant for tweaking the end result.
