for i = 1:3
    a(:,:,i) = round(255*rand(576, 720));
    b(:,:,i) = round(255*rand(576, 720));
end
a = uint8(a);
b = uint8(b);
imwrite(a, '1.bmp');
imwrite(b, '2.bmp');