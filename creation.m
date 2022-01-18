% [dd,aa] = make_streak(100);

% d = open("displacements.mat");
% displacements = [dd; d];
% 
% a = open("angles.mat");
% angles = [aa; a];

[displacements,angles] = make_streak(500);

save("displacements.mat", 'displacements');
save("angles.mat", 'angles');