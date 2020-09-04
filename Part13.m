clc
clear
me = imread('Me.png');
clock = imread('Clock.png');

img=me;
LoG_img=enhanceImageLoG(img, 10);
Laplacian_img=enhanceImageLoG(img,-1000);


img=clock;
LoG_img2=enhanceImageLoG(img, 10);
Laplacian_img2=enhanceImageLoG(img,-1000);
figure,

subplot(2,2,1);
imshow(LoG_img);title('LoG low frequency')
subplot(2,2,2);
imshow(Laplacian_img); title('Laplacian low frequency')
subplot(2,2,3);
imshow(LoG_img2);title('LoG high frequency')
subplot(2,2,4);
imshow(Laplacian_img2); title('Laplacian high frequency')
figure,

subplot(2,2,1);
imagesc(LoG_img);title('LoG low frequency')
subplot(2,2,2);
imagesc(Laplacian_img); title('Laplacian low frequency')
subplot(2,2,3);
imagesc(LoG_img2);title('LoG high frequency')
subplot(2,2,4);
imagesc(Laplacian_img2); title('Laplacian high frequency')