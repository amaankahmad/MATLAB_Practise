Image rotation can be achieved by performing what is called a reverse mapping operation. You take the rotated image and for 
each pixel of the rotated image, you determine where in the original image the pixel came from. 

Write a function named rotate_image, this function should take a matrix representing a grayscale image as input and should 
output a rotated version of the image as another matrix. In addition it should take another input which specifies the angle to 
rotate the image at, given in radians. Thus, the function should have the following signature:

function [output_image] = rotate_image(input_image, theta)
