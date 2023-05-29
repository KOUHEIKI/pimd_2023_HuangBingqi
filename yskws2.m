info1980 = imfinfo('Image20230516150419.png')
typr1980 = info1980.ColorType
info2011 = imfinfo('Image20230516150448.png')
typr2011 = info2011.ColorType


figure(1)
[glacier1980,map1980] = imread('Image20230516150419.png');
imshow(glacier1980,map1980);

figure(2)
[glacier2011,map2011] = imread('Image20230516150448.png');
imshow(glacier2011,map2011);

figure(3)
gs1980 = ind2gray(glacier1980,map1980);
gs2011 = ind2gray(glacier2011,map2011);
imshowpair(gs1980,gs2011,'montage')


figure(4)
rgb2011 = ind2rgb(glacier2011,map2011);
imshow(rgb2011)


figure(5)
[ind2011,map] = rgb2ind(rgb2011,2);
imshow(ind2011,map)