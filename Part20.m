clc
clear
 clock= imread('hamed1.jpg');
me = imread('hamed2.jpg');

pishi=imread('pishi1.jpg');
hamed=imread('pishi3.jpg');
hamed=imrotate(hamed,+90);
imshow(rgb2gray(hamed));

pishi = imresize(mat2gray(pishi), [720 1280]);
hamed= imresize(mat2gray(hamed), [720 1280]);

%mahta=imread('pishi2.jpg');
%mahta=imresize(mat2gray(mahta), [720 1280]);
%C=hybridImage((pishi), (mahta), 50, 1000);

C=hybridImage(rgb2gray(hamed), (pishi), 70, 600);

figure,
imshow(C),title('Hybrid Image');
figure,
imshow(subsampleImage((pishi), 4, 100)),title(' Low filtered image');

%%
A = imresize(me, [720 1280]);
B = imresize((clock), [720 1280]);
a=hybridImage(B, A, 20, 100);
b=mat2gray(a);
imshow(b),title('Hybrid Image');
figure,
imshow(subsampleImage(a, 4, 100)),title(' Low filtered image');



