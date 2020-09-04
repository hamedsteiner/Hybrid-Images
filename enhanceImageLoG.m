function y = enhanceImageLoG(image, sigma)


x1=LPF(image,5,15);
y1 = LoGfilt(image, sigma);

y=image+y1-0.15*x1;

end