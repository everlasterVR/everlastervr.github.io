Local Distortion Physics (**LDP**) enables soft physics to react to local skin **compression** and **stretching**.

It changes the values of soft physics parameters on individual soft joints based on the distances of those joints from their neighboring joints. When the distance decreases, the mesh is compressing at that joint, and when the distance increases, the mesh is stretching at that joint - in other words, there's local distortion in the mesh.

<div class='video-container'>
  <iframe
    src='https://videos.sproutvideo.com/embed/ac9fdbb31b1de6c125/34148bf0d70df5e6?playerTheme=dark&amp;playerColor=2f3437'
    allowfullscreen
    referrerpolicy='no-referrer-when-downgrade'
    title='Local distortion physics'>
  </iframe>
</div>

The distortion visualization grid is only shown for the left glute or breast.

> **Tip: Applying Only To Left Glute/Breast**<br/>
> When this option is enabled, any changes to the local distortion values only apply to the left glute or breast, allowing you to compare the original behaviour with the changed behaviour side by side. The right glute or breast will use the default values for local distortion physics.
