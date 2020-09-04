function y = LPF(Img, Sigma, Kernel)
F = fspecial('gaussian', Kernel, Sigma);
y = imfilter(Img,F);
end

