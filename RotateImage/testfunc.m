clear all
% Load the image
load mri % Demo image within MATLAB
test_image = D(:,:,:,1);
% Rotate the image by pi/4 radians using the function
rotated_image = rotate_image(test_image, pi/4);
% Display rotated image and original image side-by-side
figure(1) % Create figure
subplot(1,2,1)
imagesc(test_image)
title('Original image')
axis square
subplot(1,2,2)
imagesc(rotated_image)
title('Rotated image')
axis square
colormap gray % Change the colourmap to gray
