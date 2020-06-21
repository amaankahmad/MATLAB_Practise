function [outputImage] = edge_detection(inputImage)
% Initialise the size of the inputimage
[rows , cols] = size(inputImage);
% Intialise size of outputImage and equation outputs as empty
outputImage=uint8(zeros([rows cols]));
outV=uint8(zeros([rows cols]));
outH=uint8(zeros([rows cols]));
% Iterating through the rows
for x=1:1:rows-1
    % Iterating through the columns
    for y=1:1:cols-1
        % Equations for the Veritcal and Horizontal edge detection
        outV(x,y) = abs(inputImage(x,y)-inputImage(x+1,y));
        outH(x,y) = abs(inputImage(x,y)-inputImage(x,y+1));
        % Output image averaging vertical and horizontal edge detection
        outputImage(x,y) = (outH(x,y)+outV(x,y))/2;
        
    end
end
end