% quick and dirty timing script, relies on you having written CreateComplexGrid, JuliaSetPoints and ColourJulia
% NOT the official timing script but gives you an idea of the sorts of parameters to test your code with
% if you were running your code on matlab online: https://au.mathworks.com/products/matlab-online.html
clear
clc
clf

n = 720; % grid size will be 720x720 (roughly half a million elements)
cutoff = 100;
grid = CreateComplexGrid(n);

disp('Timing JuliaSetPoints')
tic 
points = JuliaSetPoints(grid,-0.8+0i,cutoff); % lots of points in the set
points = JuliaSetPoints(grid,-0.8+0.2i,cutoff); % few points in the set
toc

disp('Timing ColourJulia')
tic
J1 = ColourJulia(points,jet(cutoff));
toc