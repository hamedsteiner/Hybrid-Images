function y = subsampleImage(image, subs, sigma)

if(sigma<=0)
    y=image(1:subs:end, 1:subs:end, :);
else
    t = LPF(image, sigma, 15);
    y=t(1:subs:end, 1:subs:end, :);% now select 1 among subs pixel
    
%figure, imshow(y);
end

