clear all
close all


i=1;
figCount = 1;


N=512;


% Display Image
I = imread('venado.png');
figure(1);
imshow(I,[]);title('Original')


Blue  = I(:,:,3);
f = double(Blue);
figure(2);
F = fft2(f);
F_ = fftshift(F);
H = log(F_);
G = H;

val = 0;
size = 50;
inner = 70;
limit = 1024-size;

threshold = 10;
for i = 1:limit
    if( (i < 512 - inner) || i > (512 +  inner - size))
    s = i;
    f = i + size;
    box = real(H(s:f, s:f));   % Box where we will operate
    imBox = imag(H(s:f, s:f));
    G(s:f, s:f) = 0;
    end
end



for i = 1:limit
    s = 1024 - i - size;
    if(s == 0)
        s = 1;
    end
    f = 1024 - i;
    if( (s < 512 - inner) || s > (512 +  inner - size))
    G(s:f, i:(i+size)) = 0;
    end
end

% limit = 1024-size;
% for i = 1:limit
%     s = 512 - size/2;
%     f = 512 + size/2;
%     G(s:f, i:(i + size)) = val;
%     G(i:(i + size), s:f) = val;
% 
% end

% size = 200;
% s = 512 - size/2;
% f = 512 + size/2;
% G(s:f, s:f) = 0;

% G = H - G;


% G = not(G);




imshow(G,[]);title('Transformada')


figure(3);
g=ifft2(fftshift(exp(G)));
imshow(g,[]);title('devuelta')







