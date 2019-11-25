I=imread (’barbara.jpg’); 
IB = imnoise (I,’salt pepper’); 
ﬁgure(1) subplot(1,2,1) subimage(I) title(’Original Image’) subplot(1, 2, 2) subimage(IB) title (’Noisy Image’) N=ones(3)/9; 
If1=imﬁlter(IB, N); ﬁgure(2) image(If1) title(’Noisy image ﬁltered by a 3-by-3 averaging ﬁlter’)
imgmed = IB;forc = 1 : 3imgmed(:,:,c) = medfilt2(IB(:,:,c),[3,3]);endfigure(3)image(imgmed)title(0NoisyImagefilteredbya by−3medianfilter0) imghmed = hmf(I,3);
figure(4);image(imghmed)title(0NoisyImagefilteredbya3−by −3hybridmedianfilter0) fprintf(’*********ERROR COMPARISON********’) errIB = immse(I,IB);
fprintf(0mean−squarederrorofthenoisyimageiserr2IB =psnr (I,IB);
fprintf(0ThePSNRratioofthenoisyimageiserr3IB = ssim(IB,I);
fprintf(0TheSSIMofthenoisyimageis errIf1 = immse(I,If1);
fprintf(0mean−squarederroroftheimagefilteredbyaveragingfilteriserr2If1 =psnr (I,If1);
fprintf(0ThePSNRratiooftheimagefilteredbyaveragingfilteriserr3If1 = ssim(If1,I);
fprintf(0TheSSIMofimagefilteredbyaveragingfilteris errimgmed = immse(I,imgmed);
fprintf(0mean−squarederroroftheimagefilteredbymedianfilteriserr2ipsnr (I,imgmed);
fprintf(0ThePSNRratiooftheimagefilteredbymedianfilteriserr3imgmed = ssim(I,imgmed);
fprintf(0TheSSIMofimagefilteredbymedianfilteris errimghmed = immse(I,imghmed);
fprintf(0mean−squarederroroftheimagefilteredbyhybridmedianfilteriserrpsnr (I,imghmed);
fprintf(0ThePSNRratiooftheimagefilteredbyhybridmedianfilteriserr3imghmed = ssim(I,imghmed);
fprintf(0TheSSIMofimagefilteredbyhybridmedianfilteris
