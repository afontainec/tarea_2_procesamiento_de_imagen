clear all
close all


i=1;
figCount = 1;


N=512;


% Display Image

I = imread('venado.png');
figure(figCount);
imshow(I);
title('imagen original f')
figCount = figCount + 1;

% Show By colors

Red   = I(:,:,1);
Green = I(:,:,2);
Blue  = I(:,:,3);

% figure(figCount)
% subplot(2,3,1);imshow(Red)  ;title('Red');
% subplot(2,3,2);imshow(Green);title('Green');
% subplot(2,3,3);imshow(Blue) ;title('Blue');
% subplot(2,3,4);imhist(Red)  ;title('Histogram');
% subplot(2,3,5);imhist(Green);title('Histogram');
% subplot(2,3,6);imhist(Blue) ;title('Histogram');
figCount = figCount + 1;


 % Show only one color
 
 f = double(Blue);
%  figure(figCount)
%  imshow(f,[]);title('f')
 figCount = figCount + 1;
 
 % 3D representation of the color
 
%  figure(figCount);
%  mesh(f);
%  title('f en 3D')
 pause
 figCount = figCount + 1;
 
 % Transformada de fourier

 figure(figCount);
 F=fft2(f);
%  imshow(abs(F),[]);
 title('F=fft2(f) [abs(F)]');
 figCount = figCount + 1;
 
 
figure(figCount); 
G = fftshift(F);
imshow(abs(G),[]);title('F=fft2(f) [abs(fftshift(F))]')
figCount = figCount + 1; 
 
figure(figCount);
H = log(abs(G) + 1);
imshow(H,[]);
title('F=fft2(f) [log(abs(fftshift(F))+1)]')
figCount = figCount + 1;
 
figure(figCount);
mesh(H);title('F=fft2(f) [log(abs(fftshift(F))+1)]')
pause
figCount = figCount + 1;

figure(figCount);
g=ifft2(fft2(f));
imshow(fftshift(g),[]);title('devuelta')







