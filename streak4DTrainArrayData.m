function [Images,Displacements,Angles] = streak4DTrainArrayData(training_size)

    Images = zeros(48,48,1,training_size);
    d = zeros(training_size, 1);
    a = zeros(training_size, 1);
    
    for n=1:training_size
       [image, angle, length] = generate_streak;
       Images(:,:,1,n) = image;
       a(n,1) = angle;
       d(n,1) = length;
    end
    
    Displacements = categorical(d);
    Angles = categorical(a);
end