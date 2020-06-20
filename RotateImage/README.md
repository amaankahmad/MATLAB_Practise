Write a function named rotate_image, this function should take a matrix representing a grayscale image as input and should 
output a rotated version of the image as another matrix. In addition it should take another input which specifies the angle to 
rotate the image at, given in radians. Thus, the function should have the following signature:

function [output_image] = rotate_image(input_image, theta)

Image rotation can be achieved by performing what is called a reverse mapping operation. You take the rotated image and for 
each pixel of the rotated image, you determine where in the original image the pixel came from. Mathematically, this can be 
expressed as:
[
xoutput
youtput]
=
[
cos(θ) sin(θ)
−sin(θ) cos(θ)
]−1
∗
( [xinput
yinput]
−
[
xcentre
ycentre] ) +
[
xcentre
ycentre]
, (2.1 )
where (xinput, yinput) are the coordinates for a pixel in the input (un-rotated) image and (xoutput, youtput) are the 
coordinates of the output (rotated) image. The extra terms involving the coordinates for the centre of the image 
(xcentre, ycentre) are included because we want the rotation to occur around the centre of the image and not the origin. The 
angle θ is the angle of the rotation given in radians.
