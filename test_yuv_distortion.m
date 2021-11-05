src_rgb_blue = imread("blue.jpg");
src_rgb_yellow = imread("yellow.jpg");
src_rgb_green = imread("green.jpg");

src_yuv_blue = rgb2yuv(src_rgb_blue);
src_yuv_yellow = rgb2yuv(src_rgb_yellow);
src_yuv_green = rgb2yuv(src_rgb_green);

rng(17)
noise_yuv_blue = imnoise(src_yuv_blue, 'speckle', 1/4096);
noise_yuv_yellow = imnoise(src_yuv_yellow, 'speckle', 1/4096);
noise_yuv_green = imnoise(src_yuv_green, 'speckle', 1/4096);

dec_rgb_blue = yuv2rgb(noise_yuv_blue);
dec_rgb_yellow = yuv2rgb(noise_yuv_yellow);
dec_rgb_green = yuv2rgb(noise_yuv_green);

PSNR_blue = psnr(dec_rgb_blue, src_rgb_blue)
PSNR_yellow = psnr(dec_rgb_yellow, src_rgb_yellow)
PSNR_green = psnr(dec_rgb_green, src_rgb_green)
