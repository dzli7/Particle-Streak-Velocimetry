function [im, angle, l] = generate_streak()
    wsize = 48;
    nstreaks = randi(8,1)+2;
    image=zeros(wsize,wsize,1);
    f=figure("Visible", 'off'); imshow(image); hold on; axis off;
    
    colors = ones(nstreaks,3);
    for n=1:nstreaks
        colors(n,:) = colors(n,:)*rand(1);
    end
    colororder(colors);
    
    length = randi(2*wsize,1) - wsize;
    l = abs(length);
    angle=rand(1,1)*2*pi;
    
    for n=1:nstreaks
%         thickness=randi(2,1)+1;
        thickness = randi(4,1)+4; %for matlab online
        p1=[randi(wsize,1),randi(wsize,1)];
        p2=[p1(1) + length*cos(angle), p1(2) + length*sin(angle)];
        
        plot([p1(2),p2(2)], [p1(1),p2(1)], 'LineWidth', thickness/2);
    end
    hold off
    X = print(f, '-RGBImage');
    im2 = rgb2gray(X);
    im = blur(im2, 0.8);
%     saveas(f,'testimage.png'); %figure may have to change for some reason
end
