
% Practice Script to generate small 1000x1000 Julia Set
clear ;
grid1000=CreateComplexGrid(1000);
points = uint8(JuliaSetPoints(grid1000,-0.79+0.15i,100)); % cutoff = 100
J1 = ColourJulia(points, jet(100)); % jet colormap with 100 rows
J2 = ColourJulia(points, hot(100)); % hot colormap with 100 rows

figure(1)
subplot(1,2,1)
imshow(J1) % image of J1 (on the left)
subplot(1,2,2)
imshow(J2) % image of J2 (on the right)

% WORKS!
