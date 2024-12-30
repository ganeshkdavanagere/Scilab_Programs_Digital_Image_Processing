// Read the image
img_path = "C:\Users\Abhishek\OneDrive\Documents\DBMS Seminar Report (1)\PR_04\input.jpg";
original_img = imread(img_path);

// Convert image to grayscale
//gray_img = rgb2gray(original_img);

// Add Salt & Pepper noise
sp_noise_img = imnoise(gray_img, "salt & pepper", 0.05);

// Add Gaussian noise
gaussian_noise_img = imnoise(gray_img, "gaussian", 0.01, 0.02);

// Display original and noisy images in a subplot
figure();
subplot(1, 3, 1);
imshow(gray_img);
title("Original Image");

subplot(1, 3, 2);
imshow(sp_noise_img);
title("Salt & Pepper Noise");

subplot(1, 3, 3);
imshow(gaussian_noise_img);
title("Gaussian Noise");
original_img = imread(img_path);

// Convert image to grayscale
gray_img = rgb2gray(original_img);

// Add Salt & Pepper noise
sp_noise_img = imnoise(gray_img, "salt & pepper", 0.05);

// Add Gaussian noise
gaussian_noise_img = imnoise(gray_img, "gaussian", 0.01, 0.02);

// Display original and noisy images in a subplot
figure();
subplot(1, 3, 1);
imshow(gray_img);
title("Original Image");

subplot(1, 3, 2);
imshow(sp_noise_img);
title("Salt & Pepper Noise");

subplot(1, 3, 3);
imshow(gaussian_noise_img);
title("Gaussian Noise");
