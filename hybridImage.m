function y = hybridImage(image1, image2, sigma1, sigma2)

img1=LPF(image1,sigma1*1.5+2,15);

img2=HPF(image2,sigma2*2+1,15);
figure,
subplot(2,1,1),
imshow(img2),title('Highpass');
subplot(2,1,2),
imshow(img1),title('Lowpass');

y=(img1+img2)/2;
end

