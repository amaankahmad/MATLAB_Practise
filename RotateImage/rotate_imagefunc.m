function [outputImage] = rotate_imagefunc(inputImage,theta)
%calculating array dimesions such that  rotated image gets fit in it exactly.
% we are using absolute so that we get  positve value in any case ie.,any quadrant.
[rowsi,colsi]= size(inputImage); 
% define an array withcalculated dimensionsand fill the array  with zeros ie.,black
outputImage=uint8(zeros([rowsi colsi]));

%calculating center of original and final image
xo=ceil(rowsi/2);                                                            
yo=ceil(colsi/2);

midx=ceil((size(outputImage,1))/2);
midy=ceil((size(outputImage,2))/2);

% in this loop we calculate corresponding coordinates of pixel of A 
% for each pixel of C, and its intensity will be  assigned after checking
% weather it lie in the bound of A (original image)
for i=1:size(outputImage,1)
    for j=1:size(outputImage,2)                                                       

         x= (i-midx)*cos(theta)+(j-midy)*sin(theta);                                       
         y= -(i-midx)*sin(theta)+(j-midy)*cos(theta);                             
         x=round(x)+xo;
         y=round(y)+yo;

         if (x>=1 && y>=1 && x<=size(inputImage,1) &&  y<=size(inputImage,2) ) 
              outputImage(i,j,:)=inputImage(x,y,:);  
         end

    end
end

