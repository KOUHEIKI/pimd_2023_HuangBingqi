I = imread('cameraman.tif');
figure(1)
imshow(I)

iblur1 = imgaussfilt(I,3);

iblur2 = imgaussfilt(I,5);

iblur3 = imgaussfilt(I,7);

Idog1 = Iblur1 - Iblur2 +128 ;

Idog2 = Iblur3 - Iblur2 +128 ;
figure(2)
subplot(2,3,1)
imshow(ibur1)


subplot(2,3,2)
imshow(iblur2)

subplot(2,3,3)
imshow(iblur3)


subplot(2,3,4)
imshow(Idog1)


subplot(2,3,5)
imshow(Idog2)
