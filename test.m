clear all;
close all;
fig=1;


N=512;

Name = ["Red", "Green", "Blue"];
% Display Image
I = imread('venado.png');

figure(fig);
fig = fig + 1;
imshow(I);title('Original a color');

J = I;
for c = 1:1
    C  = I(:,:,c);
    figure(fig);
    fig = fig + 1;
    color = Name(1);
    imshow(C,[]);title(strcat('Original Color ', color) );
    
    
    f = double(C);
    figure(fig);
    fig = fig + 1;
    
    F = fft2(f);
    F_ = fftshift(F);
    H = log(F_);
    G = H;
    
    
    
    
    
    
    
    
    % imtool(H,[]);title('Transformada')
    
    
    figure(fig);
    fig = fig + 1;
    width = 10;
    gap = 10;
    val = [0 20];
    
    for circ = 2:10
        T = G;
        r = circ * width + 40;
        col = val(mod(circ, 2) + 1);
        outerN = 512;

        m = min(min(G((512-r-width):(512 - gap),(512-r-width):(512-r))));
        G((512-r-width):(512 - gap),(512-r-width):(512-r)) = m;
        G((512 + gap):(512+r+ width),(512-r-width):(512-r)) = m ;
        
        G((512-r-width):(512 - gap),(512+r):(512+r+width)) = m;
        G((512 + gap):(512+r+ width),(512+r):(512+r+width)) = m;
        
        G((512-r - width):(512 - r),(512-r):(512 - gap)) = m;
        G((512-r - width):(512 - r),(512 + gap):(512 + r)) = m;
        
        G((512+r):(512 + r + width),(512-r):(512 - gap)) = m;
        G((512+r):(512 + r + width),(512+ gap):(512+r)) = m;
        
        
        imshow(G,[]);title('Transformada Ajustada')
        pause(0.2);
    end
    
    
    figure(fig);
    fig = fig + 1;
    
    g=ifft2(fftshift(exp(G)));
    imshow(g,[]);title('devuelta')
    
    
    J(:,:,c) = g;
end

figure(fig);
fig = fig + 1;
imshow(J,[]);title('Final a color')









