clear all;
close all;
fig=1;


N=512;
redStars = [479 431 3; 462 415 3; 445 401 3; 428 388 3; 411 374 3; 393 360 3; 379 345 2; 360 331 2; 479 485 3; 461 472 3; 445 458 3; 427 443 3; 411 429 3; 394 415 3; 377 401 3; 359 386 1; 342 372 1; 325 358 1; 479 457 3; 462 443 3; 445 429 3; 428 415 3; 411 401 3; 394 387 3; 377 374 3; 359 359 3; 342 345 3; 325 331 3; 308 318 3; 290 304 3; 274 290 2; 256 275 2; 239 262 2; 547 541 5; 564 556 5; 580 569 5; 598 584 5; 615 598 5];
% redStars = [479 431 3; 462 415 3; 445 401 3; 428 388 3; 411 374 3; 393 360 3; 379 345 2; 360 331 2; 479 485 3; 461 472 3; 445 458 3; 427 443 3; 411 429 3; 394 415 3;]; % 377 401 3; 359 386 1; 342 372 1; 325 358 1; 479 457 3; 462 443 3; 445 429 3; 428 415 3; 411 401 3; 394 387 3; 377 374 3; 359 359 3; 342 345 3; 325 331 3; 308 318 3; 290 304 3; 274 290 2; 256 275 2; 239 262 2; 547 541 5; 564 556 5; 580 569 5; 598 584 5; 615 598 5];
greenStars = [496 499 3; 478 486 3; 462 474 3; 445 457 3; 429 444 3; 411 429 3; 395 416 3; 376 401 3; 360 388 3; 343 373 3; 325 360 3; 308 344 3; 290 331 3; 274 318 3; 255 304 3;]; 
blueStars = [496 499 3; 479 485 3; 461 471 3; 445 457 3; 428 444 3; 411 430 3; 394 416 3; 377 402 3; 360 388 3; 343 374 3; 326 359 3; 308 343 3; 291 331 3; 274 317 3];
Name = ["Red", "Green", "Blue"];
% Display Image
I = imread('venado.png');
% I = imrotate(I, 51);

figure(fig);
fig = fig + 1;
imshow(I);title('Original a color');

J = I;
for c = 3:3
    C  = I(:,:,c);
    figure(fig);
    fig = fig + 1;
    color = Name(c);
    imshow(C,[]);title(strcat("Original Color ", color) );
    
    
    f = double(C);
    F = fft2(f);
    F_ = fftshift(F);
    H = log(F_ + 1);
    G = H;
    
    imtool(H,[]);
%     figure(fig);
%     fig = fig + 1;
%     imshow(H, []);title('Transformada');
    figure(fig);
    fig = fig + 1;
    
    switch c
        case 1
            stars = redStars;
        case 2 
            stars = greenStars;
        case 3 
            stars = blueStars;
        otherwise
            stars = [];
    end
          
           
        
    for k = 1:length(stars)
        star = stars(k, :);
        y = star(1);
        x = star(2);
        r = star(3);
        G((x-r):(x+r), (y-r):(y+r)) = 0;
        
%         for p = 1:star(3)
%             G((x - p):(x - p), y:y) = 0;
%             G((x + p):(x + p), y:y) = 0;
%             G(x:x, (y - p):(y - p)) = 0;
%             G(x:x, (y + p):(y + p)) = 0;   
%         end
    end
    imshow(G,[]);title('Transformada ajustada')
    
    
    figure(fig);
    fig = fig + 1;
    
    g=ifft2(ifftshift(exp(G) - 1));
    imshow(g,[]);title('devuelta')
    
    
    J(:,:,c) = g;
end

figure(fig);
fig = fig + 1;
imshow(J,[]);title('Final a color')









