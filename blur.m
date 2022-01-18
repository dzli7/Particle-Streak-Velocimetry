function[fin] = blur(image, scale)
    crop_rect = [186 50 534 534]; %for matlab online
%     crop_rect = [114 38 49 49];
    cropped = imcrop(image, crop_rect);
    resized = imresize(cropped, [48 NaN]);
    blur = imgaussfilt(resized, scale);
    fin = imlocalbrighten(blur, .3);
end
