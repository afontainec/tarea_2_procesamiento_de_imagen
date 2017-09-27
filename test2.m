Stars = [479 431 3; 462 415 3; 445 401 3; 428 388 3; 411 374 3; 393 360 3; 379 345 2; 360 331 2; 479 485 3; 461 472 3; 445 458 3; 427 443 3; 411 429 3; 394 415 3; 377 401 3; 359 386 1; 342 372 1; 325 358 1; 479 457 3; 462 443 3; 445 429 3; 428 415 3; 411 401 3; 394 387 3; 377 374 3; 359 359 3; 342 345 3; 325 331 3; 308 318 3; 290 304 3; 274 290 2; 256 275 2; 239 262 2];
newStars = Stars;
for i = 1: length(Stars) 
    star = Stars(i, :);
    newCoord = (512 - star(1)) + 512;
    temp = [newCoord star(2) star(3)];
     newStars = cat(1, newStars, temp);
end

disp(newStars);
disp(length(Stars));
disp(length(newStars));