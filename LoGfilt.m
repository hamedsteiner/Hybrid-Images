function y = LoGfilt(image, sigma)
kernel=[0 -1 0; -1 4 -1 ;0 -1 0];

if(sigma<=0)
    y = imfilter(image, kernel);
else
    Gauss_kernel = fspecial('gaussian',sigma);
    Gaussed_Img=imfilter(image,Gauss_kernel);
    
    %LoG_filter=conv2(Gauss_kernel,kernel)
    %LoG_Img=imfilter(image,LoG_filter);
    
    y=imfilter(Gaussed_Img,kernel);
 

%figure, imshow(y);
end

