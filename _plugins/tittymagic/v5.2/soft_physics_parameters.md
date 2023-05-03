---
title: "TittyMagic v5.2: Soft Physics Parameters"
permalink: /docs/tittymagic/v5_2/soft_physics_parameters
excerpt: ""
sidebar:
  nav: docs_tittymagic
parent_url: /docs/tittymagic/v5_2
---

Soft Physics Parameters include all of the adjustable settings from the Person atom's F Breast Physics 2 tab.

In normal VaM physics, only spring and damper can be adjusted separately for different sections of the breast. In TittyMagic, all soft physics parameters have Main, Outer, Areola and Nipple multipliers.

The physics of each breast's soft tissue is simulated with 111 small colliders and their associated joints. The colliders can be visualized when editing the Fat Collider Radius and Fat Collider Depth parameters.

> Enable the Apply Only To Left Breast checkbox to compare the manually adjusted value on the left breast to the automatically calculated value on the right breast. This makes it easy to check how the offset value affects the end result.

### Fat Spring

Magnitude of the spring that holds each soft joint in its target position.

Low fat spring makes breast fat soft and slow. High fat spring makes it rigid and quick to return to its normal shape.

### Fat Damper

Magnitude of the damper that reduces oscillation of each soft joint around its target position.

Low fat damper makes breast fat jiggle more easily.

### Fat Mass

Mass of each soft joint.

Higher mass makes the breast tissue more dense. The value is an absolute value, so increasing breast size while keeping fat mass the same reduces density.

### Fat Collider Radius

Radius of each soft collider.

Since the number of soft colliders is fixed, the radius scales with breast size.

### Fat Collider Depth

Offset of soft collider positions relative to skin surface.

Negative values pull colliders out from the breast, positive values push them into the breast.

### Fat Distance Limit

The maximum distance each soft joint can move away from its target position.

### Fat Back Force

Force applied to the pectoral joint based on movement of each soft joint.

Low back force (not 0) helps move the breast with collision, and adds a dampening effect. High force can create a feedback loop that spirals out of control.

### Fat Bk Force Max Force

Upper limit on the magnitude of back force.

Along with Fat Bk Force Threshold, this can be used to prevent an out of control feedback loop.

### Fat Bk Force Threshold

Minimum distance each soft joint needs to move for back force to be applied.

Ensures that small movements of soft joints don't cause the whole breast to move. Along with Fat Bk Force Threshold, this can be used to prevent an out of control feedback loop.
