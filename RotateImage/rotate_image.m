function [outputImage] = rotate_image(inputImage,theta)
% Rotates an image by a specified angle
   % Outputs the rotated input image by specified angle of rotation(theta)
% Intialise size of inputImage
[rows , cols] = size(inputImage);
% Variable outlining the matrix of rotation
matrixRotation=[cos(theta) sin(theta); -sin(theta) cos(theta)];
outputImage=uint8(zeros([rows cols]));
% Variable defining the centre of a matrix
centreX=ceil(rows/2);                                                            
centreY=ceil(cols/2);
% For loop going through each pixel in the inputImage
for pixelX=1:1:rows
    for pixelY=1:1:cols
        % Variable outlining distance between rotated pixel and center
        % Rotate each pixel to its new position on outputImage
        coord = [pixelX-centreX; pixelY-centreY];
        rotatedCoord = matrixRotation*coord;                            
        rotatedX=round(rotatedCoord(1,1))+centreX;
        rotatedY=round(rotatedCoord(2,1))+centreY;
        % Checks if each pixel rotated fits in the dimensions specified
        if (rotatedX>=1 && rotatedY>=1 && rotatedX<=size(inputImage,1) && rotatedY<=size(inputImage,2)) 
        	outputImage(pixelX,pixelY,:)=inputImage(rotatedX,rotatedY,:);  
        end

    end
end