function [outputImage] = edge_detection_vectorised(inputImage)
% Initialise the size of the output
outputImage = uint8(zeros(size(inputImage)));
% Shift the matrix by 1 in x and y
imageHshift = circshift(inputImage,1,2);
imageVshift = circshift(inputImage,1,1);
% Equations for the Veritcal and Horizontal edge detection
outV = abs(inputImage-imageHshift);
outH = abs(inputImage-imageVshift);
% Output image averaging vertical and horizontal edge detection
outputImage = (outH+outV)/2;
end
