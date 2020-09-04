clc
clear
me = imread('Me.png');
clock = imread('Clock.png');

img=clock;

%%
aliasing_clock=subsampleImage(img, 2, 0.5);
imshow(aliasing_clock)

aliasing_me=subsampleImage(me, 4, 0.5);
imshow(aliasing_me), title('aliasing at 1/4')

%% filter
img=clock;
y1 = subsampleImage(img, 16, -100);
y2 = LPF(y1, 2, 15);
y3 = subsampleImage(img, 16, 10);
freq1=(abs(fftshift(fft2(y1(:,:,1)))));
freq2=(abs(fftshift(fft2(y2(:,:,1)))));
freq3=(abs(fftshift(fft2(y3(:,:,1)))));



subplot(2,2,2), imshow(y1), title('1/16 no LPF')
subplot(2,2,3), imshow(y2), title('1/16 and then LPF sigma=2')
subplot(2,2,4), imshow(y3), title('LPF sigma=3.5 then 1/16')
subplot(2,2,1), imshow(img), title('original image')


figure,

subplot(2,2,1);
imshow(y1);title('1/16 no LPF')
subplot(2,2,2);
imshow(y3); title('LPF sigma=3.5 then 1/16')
subplot(2,2,3);
imshow(mat2gray(log(freq1+1)));
subplot(2,2,4);
imshow(mat2gray(log(freq3+1)));


%% 



img=me;
y1 = subsampleImage(img, 16, -100);
y2 = LPF(y1, 2, 15);
y3 = subsampleImage(img, 16, 2.5);
freq1=(abs(fftshift(fft2(y1(:,:,1)))));
freq2=(abs(fftshift(fft2(y2(:,:,1)))));
freq3=(abs(fftshift(fft2(y3(:,:,1)))));


subplot(2,2,2), imshow(y1), title('1/16 no LPF')
subplot(2,2,4), imshow(y3), title('LPF sigma=2.5 then 1/16')
subplot(2,2,1), imshow(img), title('original image')



subplot(2,2,1);
imshow(y1);title('1/16 no LPF')
subplot(2,2,2);
imshow(y3); title('LPF sigma=3.5 then 1/16')
subplot(2,2,3);
imshow(mat2gray(log(freq1+1)));
subplot(2,2,4);
imshow(mat2gray(log(freq3+1)));

%%%



subplot(2,1,1);
freq4=(abs(fftshift(fft2(me(:,:,1)))));
imshow(mat2gray(log(freq4+1)));title('Main low frequency image')
subplot(2,1,2);
freq5=(abs(fftshift(fft2(clock(:,:,1)))));title('Main high frequency image')
imshow(mat2gray(log(freq5+1)));
