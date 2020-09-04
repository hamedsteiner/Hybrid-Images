function y = HPF(Img, Sigma, Kernel)
Y = LPF(Img, Sigma, Kernel);

%F = fspecial('gaussian', Kernel, Sigma);
%y = imfilter(Img,F);

y=Img-Y;
end

