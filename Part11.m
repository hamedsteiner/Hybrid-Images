clc
clear
me = imread('Me.png');
clock = imread('Clock.png');

kernel1=5;
kernel2=15;
sigma1=0.5;
sigma2=1;
sigma3=3.5;

L_me=LPF(me,sigma1,kernel1);
L_clock=LPF(clock,sigma1,kernel1);
H_me=HPF(me,sigma1,kernel1);
H_clock=HPF(clock,sigma1,kernel1);
figure, imshow(H_me), title('kernel 5*5, sigma=0.5')
figure, imshow(H_clock), title('kernel 5*5, sigma=0.5')

L_me=LPF(me,sigma2,kernel1);
L_clock=LPF(clock,sigma2,kernel1);
H_me=HPF(me,sigma2,kernel1);
H_clock=HPF(clock,sigma2,kernel1);
figure, imshow(H_me), title('kernel 5*5, sigma=1')
figure, imshow(H_clock), title('kernel 5*5, sigma=1')

L_me=LPF(me,sigma3,kernel1);
L_clock=LPF(clock,sigma3,kernel1);
H_me=HPF(me,sigma3,kernel1);
H_clock=HPF(clock,sigma3,kernel1);
figure, imshow(H_me), title('kernel 5*5, sigma=3.5')
figure, imshow(H_clock), title('kernel 5*5, sigma=3.5')

L_me=LPF(me,sigma1,kernel2);
L_clock=LPF(clock,sigma1,kernel2);
H_me=HPF(me,sigma1,kernel2);
H_clock=HPF(clock,sigma1,kernel2);
figure, imshow(H_me), title('kernel 15*15, sigma=0.5')
figure, imshow(H_clock), title('kernel 15*15, sigma=0.5')

L_me=LPF(me,sigma2,kernel2);
L_clock=LPF(clock,sigma2,kernel2);
H_me=HPF(me,sigma2,kernel2);
H_clock=HPF(clock,sigma2,kernel2);
figure, imshow(H_me), title('kernel 15*15, sigma=1')
figure, imshow(H_clock), title('kernel 15*15, sigma=1')

L_me=LPF(me,sigma3,kernel2);
L_clock=LPF(clock,sigma3,kernel2);
H_me=HPF(me,sigma3,kernel2);
H_clock=HPF(clock,sigma3,kernel2);
figure, imshow(H_me), title('kernel 15*15, sigma=3.5')
figure, imshow(H_clock), title('kernel 15*15, sigma=3.5')