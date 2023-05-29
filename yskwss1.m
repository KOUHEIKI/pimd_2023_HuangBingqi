rgbImage = imread('peppers.png')
hsvImage = rgb2hsv(rgbImage)
hsvImage_low = (rgb2hsv(rgbImage))/2
%%
I = imread('coins.png');
figure(1)
imshow(I)
I2 = imread('coloredChips.png');
figure(2)
imshow(I2)
figure(3)
I2_gray = rgb2gray(I2); 
imshow(I2_gray)


imshow(BW)

imshow(I2_gray(100:200,100:200))
%%



channelMIN = 0.953
channelMAX = 0.043
BW = (hsvImage(:,:,1)) >= (channelMIN);
BM = (hsvImage(:,:,1)) <= (channelMAX);

BWM = BW | BM;
bwm = BW & BM;

subplot(4,1,1)
imshow(BW)
subplot(4,1,2)
imshow(BM)
subplot(4,1,3)
imshow(BWM)
subplot(4,1,4)
imshow(bwm)