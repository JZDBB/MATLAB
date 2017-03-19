img = imread('edge detection.png');
img1 = rgb2gray(img);
imshow(img1);

[gx, gy] = imgradientxy(img1, 'sobel');
% imshow((gx + 4)/8);
figure, imshow(gx, []);
figure, imshow(gx, [-4 4]);

[Gmag,Gdir] = imgradient(gx, gy);
figure, imshow(Gmag/(4 * sqrt(2)));
figure, imshow((Gdir + 180.0) / 360.0);

% my_gred = select_gdir(Gmag, Gdir, 1, 30, 60);
% figure, imshow(my_gred);
% function result = select_gdir(Gmag, )
% 	
% end