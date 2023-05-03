---
title: "Physics Rate and Frame Rate"
permalink: /docs/general/physics_rate_and_frame_rate
excerpt: ""
redirect_from:
  - /docs/general/
sidebar:
  nav: docs
---

A stable frame rate that is synchronized with the physics rate is essential for smooth looking animation, especially when it comes to the animation of morphs by plugins such as Naturalis and TittyMagic. When frame rate and physics rate are out of sync, animation can look jittery and choppy, although it is subjective how noticeable that is. Additionally, low frame rate can cause physics to slow down.

In VR, frame rate is automatically synced with the headset's refresh rate. In desktop mode, it is highly recommended to limit the frame rate either by using [VSync](https://hub.virtamate.com/wiki/user_preferences_performance/) or with [FrameRateControl](https://hub.virtamate.com/resources/macgruber-essentials.160/) by MacGruber.

**Showing frame rate in Virt-A-Mate:** Enable Performance Monitor in User Preferences. If in Desktop mode, you can also use a third party tool such as NVIDIA's performance overlay or [Reshade](https://reshade.me/).

## Physics Rate Options in User Preferences

| Physics Rate | Explanation |
|--------------|-------------|
| Auto | ❌ Default option. Often Auto means 72Hz which is usually not something you can sync your display with, and it might change on the fly as well. |
| 45 Hz | ❌ It'll work if your fps is 45, but it's not going to look as nice as a higher physics rate. |
| 60 Hz (Desktop) | ✅ The best option in most cases. |
| 60 Hz (VR) | ❔ Make sure your VR headset's display can have the same refresh rate. |
| 72-90 Hz (Desktop) | ❔ Make sure you can set a frame rate cap to the same number as the physics rate by using FrameRateControl or VSync. |
| 72-90 Hz (VR) | ❔ Make sure your VR headset's display can have the same refresh rate. |
| 120 Hz (Desktop) | ✅ Can look great with frame rate locked to 60 fps or 120 fps. |
| 120 Hz (VR) | ❔ Probably too much for a stable frame rate. |

## Physics Update Cap Options in User Preferences

| Update Cap | Explanation |
|------------|-------------|
| 1 | Only 1 physics update can be run per frame. This makes physics stay in sync with frame rate and produces smooth looking animation even when frame rate drops below the physics rate, however all physics in the scene will also slow down, causing slow motion. |
| 2 | Any frame rate lower than half of the selected physics rate will cause physics to slow down. Frame rate above half but below the full physics rate can produce jittery looking morph animations in Naturalis/TittyMagic. |
| 3 | Any frame rate lower than one third the selected physics rate will cause physics to slow down. In practice this always produces real time physics at any frame rate that is even close to playable. Frame rate above one third but below the full physics rate can produce jittery Naturalis/TittyMagic animation. |

As long as you can maintain frame rate and physics rate in sync, the update cap doesn't matter, but 1 should generally be avoided since any frame rate higher than physics rate will slow the physics down.
