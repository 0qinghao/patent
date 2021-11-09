% src_rgb = imread("blue.jpg");
src_rgb = imread("yellow_sub.jpg");
% src_rgb = imread("green.jpg");

src_ycbcr = rgb2ycbcr(src_rgb);
src_ycgco = rgb2yuv(src_rgb);

subplot(2, 4, [1, 5]);
imshow(src_rgb);

subplot(2, 4, 2);
imshow(src_ycbcr(:, :, 1));
subplot(2, 4, 3);
imshow(src_ycbcr(:, :, 2));
subplot(2, 4, 4);
imshow(src_ycbcr(:, :, 3));

subplot(2, 4, 6);
imshow(src_ycgco(:, :, 1));
subplot(2, 4, 7);
imshow(src_ycgco(:, :, 2));
subplot(2, 4, 8);
imshow(src_ycgco(:, :, 3));
